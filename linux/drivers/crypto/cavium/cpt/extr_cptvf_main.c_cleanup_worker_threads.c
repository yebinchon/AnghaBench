
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct cptvf_wqe_info {TYPE_1__* vq_wqe; } ;
struct cpt_vf {int nr_queues; int * wqe_info; struct pci_dev* pdev; } ;
struct TYPE_2__ {int twork; } ;


 int dev_info (int *,char*,int) ;
 int kzfree (struct cptvf_wqe_info*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void cleanup_worker_threads(struct cpt_vf *cptvf)
{
 struct cptvf_wqe_info *cwqe_info;
 struct pci_dev *pdev = cptvf->pdev;
 int i;

 cwqe_info = (struct cptvf_wqe_info *)cptvf->wqe_info;
 if (!cwqe_info)
  return;

 if (cptvf->nr_queues) {
  dev_info(&pdev->dev, "Cleaning VQ worker threads (%u)\n",
    cptvf->nr_queues);
 }

 for (i = 0; i < cptvf->nr_queues; i++)
  tasklet_kill(&cwqe_info->vq_wqe[i].twork);

 kzfree(cwqe_info);
 cptvf->wqe_info = ((void*)0);
}
