
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct cpt_vf {int pdev; } ;


 int CPT_VF_INT_VEC_E_DONE ;
 int CPT_VF_INT_VEC_E_MISC ;
 int cptvf_free_irq_affinity (struct cpt_vf*,int ) ;
 scalar_t__ cptvf_send_vf_down (struct cpt_vf*) ;
 int cptvf_sw_cleanup (struct cpt_vf*) ;
 int cvm_crypto_exit () ;
 int dev_err (int *,char*) ;
 int free_irq (int ,struct cpt_vf*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_irq_vectors (int ) ;
 struct cpt_vf* pci_get_drvdata (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void cptvf_remove(struct pci_dev *pdev)
{
 struct cpt_vf *cptvf = pci_get_drvdata(pdev);

 if (!cptvf) {
  dev_err(&pdev->dev, "Invalid CPT-VF device\n");
  return;
 }


 if (cptvf_send_vf_down(cptvf)) {
  dev_err(&pdev->dev, "PF not responding to DOWN msg");
 } else {
  cptvf_free_irq_affinity(cptvf, CPT_VF_INT_VEC_E_DONE);
  cptvf_free_irq_affinity(cptvf, CPT_VF_INT_VEC_E_MISC);
  free_irq(pci_irq_vector(pdev, CPT_VF_INT_VEC_E_DONE), cptvf);
  free_irq(pci_irq_vector(pdev, CPT_VF_INT_VEC_E_MISC), cptvf);
  pci_free_irq_vectors(cptvf->pdev);
  cptvf_sw_cleanup(cptvf);
  pci_set_drvdata(pdev, ((void*)0));
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  cvm_crypto_exit();
 }
}
