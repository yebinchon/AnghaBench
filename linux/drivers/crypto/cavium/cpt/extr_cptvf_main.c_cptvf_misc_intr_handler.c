
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dev; } ;
struct cpt_vf {int vfid; struct pci_dev* pdev; } ;
typedef int irqreturn_t ;


 int CPT_VF_INTR_DOVF_MASK ;
 int CPT_VF_INTR_IRDE_MASK ;
 int CPT_VF_INTR_MBOX_MASK ;
 int CPT_VF_INTR_NWRP_MASK ;
 int CPT_VF_INTR_SERR_MASK ;
 int IRQ_HANDLED ;
 int cptvf_clear_dovf_intr (struct cpt_vf*) ;
 int cptvf_clear_irde_intr (struct cpt_vf*) ;
 int cptvf_clear_mbox_intr (struct cpt_vf*) ;
 int cptvf_clear_nwrp_intr (struct cpt_vf*) ;
 int cptvf_clear_swerr_intr (struct cpt_vf*) ;
 int cptvf_handle_mbox_intr (struct cpt_vf*) ;
 int cptvf_read_vf_misc_intr_status (struct cpt_vf*) ;
 int cptvf_write_vq_doorbell (struct cpt_vf*,int ) ;
 int dev_dbg (int *,char*,int,int ) ;
 int dev_err (int *,char*,int,...) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t cptvf_misc_intr_handler(int irq, void *cptvf_irq)
{
 struct cpt_vf *cptvf = (struct cpt_vf *)cptvf_irq;
 struct pci_dev *pdev = cptvf->pdev;
 u64 intr;

 intr = cptvf_read_vf_misc_intr_status(cptvf);

 if (likely(intr & CPT_VF_INTR_MBOX_MASK)) {
  dev_dbg(&pdev->dev, "Mailbox interrupt 0x%llx on CPT VF %d\n",
   intr, cptvf->vfid);
  cptvf_handle_mbox_intr(cptvf);
  cptvf_clear_mbox_intr(cptvf);
 } else if (unlikely(intr & CPT_VF_INTR_DOVF_MASK)) {
  cptvf_clear_dovf_intr(cptvf);

  cptvf_write_vq_doorbell(cptvf, 0);
  dev_err(&pdev->dev, "Doorbell overflow error interrupt 0x%llx on CPT VF %d\n",
   intr, cptvf->vfid);
 } else if (unlikely(intr & CPT_VF_INTR_IRDE_MASK)) {
  cptvf_clear_irde_intr(cptvf);
  dev_err(&pdev->dev, "Instruction NCB read error interrupt 0x%llx on CPT VF %d\n",
   intr, cptvf->vfid);
 } else if (unlikely(intr & CPT_VF_INTR_NWRP_MASK)) {
  cptvf_clear_nwrp_intr(cptvf);
  dev_err(&pdev->dev, "NCB response write error interrupt 0x%llx on CPT VF %d\n",
   intr, cptvf->vfid);
 } else if (unlikely(intr & CPT_VF_INTR_SERR_MASK)) {
  cptvf_clear_swerr_intr(cptvf);
  dev_err(&pdev->dev, "Software error interrupt 0x%llx on CPT VF %d\n",
   intr, cptvf->vfid);
 } else {
  dev_err(&pdev->dev, "Unhandled interrupt in CPT VF %d\n",
   cptvf->vfid);
 }

 return IRQ_HANDLED;
}
