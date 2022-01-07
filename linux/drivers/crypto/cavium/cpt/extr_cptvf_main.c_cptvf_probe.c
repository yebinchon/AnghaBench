
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_2__ {int qchunksize; } ;
struct cpt_vf {int vfgrp; int priority; struct pci_dev* pdev; TYPE_1__ cqinfo; int node; int reg_base; int flags; } ;


 int CPT_CMD_QCHUNK_SIZE ;
 int CPT_CMD_QLEN ;
 int CPT_FLAG_VF_DRIVER ;
 int CPT_NUM_QS_PER_VF ;
 int CPT_VF_INT_VEC_E_DONE ;
 int CPT_VF_INT_VEC_E_MISC ;
 int CPT_VF_MSIX_VECTORS ;
 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_IRQ_MSIX ;
 int cptvf_check_pf_ready (struct cpt_vf*) ;
 int cptvf_device_init (struct cpt_vf*) ;
 int cptvf_done_intr_handler ;
 int cptvf_enable_done_interrupts (struct cpt_vf*) ;
 int cptvf_enable_mbox_interrupts (struct cpt_vf*) ;
 int cptvf_enable_swerr_interrupts (struct cpt_vf*) ;
 int cptvf_free_irq_affinity (struct cpt_vf*,int ) ;
 int cptvf_misc_intr_handler ;
 int cptvf_send_vf_priority_msg (struct cpt_vf*) ;
 int cptvf_send_vf_to_grp_msg (struct cpt_vf*) ;
 int cptvf_send_vf_up (struct cpt_vf*) ;
 int cptvf_send_vq_size_msg (struct cpt_vf*) ;
 int cptvf_set_irq_affinity (struct cpt_vf*,int ) ;
 int cptvf_sw_init (struct cpt_vf*,int ,int ) ;
 int cvm_crypto_init (struct cpt_vf*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_to_node (struct device*) ;
 struct cpt_vf* devm_kzalloc (struct device*,int,int ) ;
 int free_irq (int ,struct cpt_vf*) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int ,int ,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct cpt_vf*) ;
 int pcim_iomap (struct pci_dev*,int ,int ) ;
 int request_irq (int ,int ,int ,char*,struct cpt_vf*) ;

__attribute__((used)) static int cptvf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct device *dev = &pdev->dev;
 struct cpt_vf *cptvf;
 int err;

 cptvf = devm_kzalloc(dev, sizeof(*cptvf), GFP_KERNEL);
 if (!cptvf)
  return -ENOMEM;

 pci_set_drvdata(pdev, cptvf);
 cptvf->pdev = pdev;
 err = pci_enable_device(pdev);
 if (err) {
  dev_err(dev, "Failed to enable PCI device\n");
  pci_set_drvdata(pdev, ((void*)0));
  return err;
 }

 err = pci_request_regions(pdev, DRV_NAME);
 if (err) {
  dev_err(dev, "PCI request regions failed 0x%x\n", err);
  goto cptvf_err_disable_device;
 }

 cptvf->flags |= CPT_FLAG_VF_DRIVER;
 err = pci_set_dma_mask(pdev, DMA_BIT_MASK(48));
 if (err) {
  dev_err(dev, "Unable to get usable DMA configuration\n");
  goto cptvf_err_release_regions;
 }

 err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(48));
 if (err) {
  dev_err(dev, "Unable to get 48-bit DMA for consistent allocations\n");
  goto cptvf_err_release_regions;
 }


 cptvf->reg_base = pcim_iomap(pdev, 0, 0);
 if (!cptvf->reg_base) {
  dev_err(dev, "Cannot map config register space, aborting\n");
  err = -ENOMEM;
  goto cptvf_err_release_regions;
 }

 cptvf->node = dev_to_node(&pdev->dev);
 err = pci_alloc_irq_vectors(pdev, CPT_VF_MSIX_VECTORS,
   CPT_VF_MSIX_VECTORS, PCI_IRQ_MSIX);
 if (err < 0) {
  dev_err(dev, "Request for #%d msix vectors failed\n",
   CPT_VF_MSIX_VECTORS);
  goto cptvf_err_release_regions;
 }

 err = request_irq(pci_irq_vector(pdev, CPT_VF_INT_VEC_E_MISC),
     cptvf_misc_intr_handler, 0, "CPT VF misc intr",
     cptvf);
 if (err) {
  dev_err(dev, "Request misc irq failed");
  goto cptvf_free_vectors;
 }


 cptvf_enable_mbox_interrupts(cptvf);
 cptvf_enable_swerr_interrupts(cptvf);



 err = cptvf_check_pf_ready(cptvf);
 if (err) {
  dev_err(dev, "PF not responding to READY msg");
  goto cptvf_free_misc_irq;
 }


 cptvf->cqinfo.qchunksize = CPT_CMD_QCHUNK_SIZE;
 err = cptvf_sw_init(cptvf, CPT_CMD_QLEN, CPT_NUM_QS_PER_VF);
 if (err) {
  dev_err(dev, "cptvf_sw_init() failed");
  goto cptvf_free_misc_irq;
 }

 err = cptvf_send_vq_size_msg(cptvf);
 if (err) {
  dev_err(dev, "PF not responding to QLEN msg");
  goto cptvf_free_misc_irq;
 }


 cptvf_device_init(cptvf);

 cptvf->vfgrp = 1;
 err = cptvf_send_vf_to_grp_msg(cptvf);
 if (err) {
  dev_err(dev, "PF not responding to VF_GRP msg");
  goto cptvf_free_misc_irq;
 }

 cptvf->priority = 1;
 err = cptvf_send_vf_priority_msg(cptvf);
 if (err) {
  dev_err(dev, "PF not responding to VF_PRIO msg");
  goto cptvf_free_misc_irq;
 }

 err = request_irq(pci_irq_vector(pdev, CPT_VF_INT_VEC_E_DONE),
     cptvf_done_intr_handler, 0, "CPT VF done intr",
     cptvf);
 if (err) {
  dev_err(dev, "Request done irq failed\n");
  goto cptvf_free_misc_irq;
 }


 cptvf_enable_done_interrupts(cptvf);


 cptvf_set_irq_affinity(cptvf, CPT_VF_INT_VEC_E_MISC);
 cptvf_set_irq_affinity(cptvf, CPT_VF_INT_VEC_E_DONE);

 err = cptvf_send_vf_up(cptvf);
 if (err) {
  dev_err(dev, "PF not responding to UP msg");
  goto cptvf_free_irq_affinity;
 }
 err = cvm_crypto_init(cptvf);
 if (err) {
  dev_err(dev, "Algorithm register failed\n");
  goto cptvf_free_irq_affinity;
 }
 return 0;

cptvf_free_irq_affinity:
 cptvf_free_irq_affinity(cptvf, CPT_VF_INT_VEC_E_DONE);
 cptvf_free_irq_affinity(cptvf, CPT_VF_INT_VEC_E_MISC);
cptvf_free_misc_irq:
 free_irq(pci_irq_vector(pdev, CPT_VF_INT_VEC_E_MISC), cptvf);
cptvf_free_vectors:
 pci_free_irq_vectors(cptvf->pdev);
cptvf_err_release_regions:
 pci_release_regions(pdev);
cptvf_err_disable_device:
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));

 return err;
}
