
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct cpt_vf {int nr_queues; int cqinfo; struct pci_dev* pdev; } ;


 int CPT_INST_SIZE ;
 int alloc_command_queues (struct cpt_vf*,int *,int ,int ) ;
 int dev_err (int *,char*,int ) ;

__attribute__((used)) static int init_command_queues(struct cpt_vf *cptvf, u32 qlen)
{
 struct pci_dev *pdev = cptvf->pdev;
 int ret;


 ret = alloc_command_queues(cptvf, &cptvf->cqinfo, CPT_INST_SIZE,
       qlen);
 if (ret) {
  dev_err(&pdev->dev, "failed to allocate AE command queues (%u)\n",
   cptvf->nr_queues);
  return ret;
 }

 return ret;
}
