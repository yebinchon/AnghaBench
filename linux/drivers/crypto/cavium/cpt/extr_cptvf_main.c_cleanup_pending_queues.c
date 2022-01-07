
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct cpt_vf {int pqinfo; int nr_queues; struct pci_dev* pdev; } ;


 int dev_info (int *,char*,int ) ;
 int free_pending_queues (int *) ;

__attribute__((used)) static void cleanup_pending_queues(struct cpt_vf *cptvf)
{
 struct pci_dev *pdev = cptvf->pdev;

 if (!cptvf->nr_queues)
  return;

 dev_info(&pdev->dev, "Cleaning VQ pending queue (%u)\n",
   cptvf->nr_queues);
 free_pending_queues(&cptvf->pqinfo);
}
