
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct cpt_vf {int pqinfo; struct pci_dev* pdev; } ;


 int alloc_pending_queues (int *,int ,int ) ;
 int dev_err (int *,char*,int ) ;

__attribute__((used)) static int init_pending_queues(struct cpt_vf *cptvf, u32 qlen, u32 nr_queues)
{
 struct pci_dev *pdev = cptvf->pdev;
 int ret;

 if (!nr_queues)
  return 0;

 ret = alloc_pending_queues(&cptvf->pqinfo, qlen, nr_queues);
 if (ret) {
  dev_err(&pdev->dev, "failed to setup pending queues (%u)\n",
   nr_queues);
  return ret;
 }

 return 0;
}
