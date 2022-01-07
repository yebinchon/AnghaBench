
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct cpt_vf {int pqinfo; int nr_queues; struct pci_dev* pdev; } ;


 int dev_err (int *,char*,int ) ;
 int process_pending_queue (struct cpt_vf*,int *,int ) ;
 scalar_t__ unlikely (int) ;

void vq_post_process(struct cpt_vf *cptvf, u32 qno)
{
 struct pci_dev *pdev = cptvf->pdev;

 if (unlikely(qno > cptvf->nr_queues)) {
  dev_err(&pdev->dev, "Request for post processing on invalid pending queue: %u\n",
   qno);
  return;
 }

 process_pending_queue(cptvf, &cptvf->pqinfo, qno);
}
