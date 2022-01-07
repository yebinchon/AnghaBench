
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_dev {int dev; } ;
struct cptvf_wqe {int twork; } ;
struct cpt_vf {int vfid; struct pci_dev* pdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ cptvf_read_vq_done_count (struct cpt_vf*) ;
 int cptvf_write_vq_done_ack (struct cpt_vf*,scalar_t__) ;
 int dev_err (int *,char*,int ) ;
 struct cptvf_wqe* get_cptvf_vq_wqe (struct cpt_vf*,int ) ;
 int tasklet_hi_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t cptvf_done_intr_handler(int irq, void *cptvf_irq)
{
 struct cpt_vf *cptvf = (struct cpt_vf *)cptvf_irq;
 struct pci_dev *pdev = cptvf->pdev;

 u32 intr = cptvf_read_vq_done_count(cptvf);

 if (intr) {
  struct cptvf_wqe *wqe;




  cptvf_write_vq_done_ack(cptvf, intr);
  wqe = get_cptvf_vq_wqe(cptvf, 0);
  if (unlikely(!wqe)) {
   dev_err(&pdev->dev, "No work to schedule for VF (%d)",
    cptvf->vfid);
   return IRQ_NONE;
  }
  tasklet_hi_schedule(&wqe->twork);
 }

 return IRQ_HANDLED;
}
