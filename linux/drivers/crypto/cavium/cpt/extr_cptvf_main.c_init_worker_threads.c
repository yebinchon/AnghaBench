
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pci_dev {int dev; } ;
struct cptvf_wqe_info {TYPE_1__* vq_wqe; } ;
struct cpt_vf {int nr_queues; struct cptvf_wqe_info* wqe_info; struct pci_dev* pdev; } ;
struct TYPE_2__ {int qno; struct cpt_vf* cptvf; int twork; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (int *,char*,int) ;
 struct cptvf_wqe_info* kzalloc (int,int ) ;
 int tasklet_init (int *,int ,int ) ;
 int vq_work_handler ;

__attribute__((used)) static int init_worker_threads(struct cpt_vf *cptvf)
{
 struct pci_dev *pdev = cptvf->pdev;
 struct cptvf_wqe_info *cwqe_info;
 int i;

 cwqe_info = kzalloc(sizeof(*cwqe_info), GFP_KERNEL);
 if (!cwqe_info)
  return -ENOMEM;

 if (cptvf->nr_queues) {
  dev_info(&pdev->dev, "Creating VQ worker threads (%d)\n",
    cptvf->nr_queues);
 }

 for (i = 0; i < cptvf->nr_queues; i++) {
  tasklet_init(&cwqe_info->vq_wqe[i].twork, vq_work_handler,
        (u64)cwqe_info);
  cwqe_info->vq_wqe[i].qno = i;
  cwqe_info->vq_wqe[i].cptvf = cptvf;
 }

 cptvf->wqe_info = cwqe_info;

 return 0;
}
