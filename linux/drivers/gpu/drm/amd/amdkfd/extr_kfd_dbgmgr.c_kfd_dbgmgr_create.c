
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_dev {TYPE_1__* dqm; int init_complete; } ;
struct kfd_dbgmgr {struct kfd_dbgmgr* dbgdev; struct kfd_dev* dev; scalar_t__ pasid; } ;
typedef enum DBGDEV_TYPE { ____Placeholder_DBGDEV_TYPE } DBGDEV_TYPE ;
struct TYPE_2__ {scalar_t__ sched_policy; } ;


 int DBGDEV_TYPE_DIQ ;
 int DBGDEV_TYPE_NODIQ ;
 scalar_t__ KFD_SCHED_POLICY_NO_HWS ;
 scalar_t__ WARN_ON (int) ;
 void* kfd_alloc_struct (struct kfd_dbgmgr*) ;
 int kfd_dbgdev_init (struct kfd_dbgmgr*,struct kfd_dev*,int) ;
 int kfree (struct kfd_dbgmgr*) ;
 int pr_err (char*) ;

bool kfd_dbgmgr_create(struct kfd_dbgmgr **ppmgr, struct kfd_dev *pdev)
{
 enum DBGDEV_TYPE type = DBGDEV_TYPE_DIQ;
 struct kfd_dbgmgr *new_buff;

 if (WARN_ON(!pdev->init_complete))
  return 0;

 new_buff = kfd_alloc_struct(new_buff);
 if (!new_buff) {
  pr_err("Failed to allocate dbgmgr instance\n");
  return 0;
 }

 new_buff->pasid = 0;
 new_buff->dev = pdev;
 new_buff->dbgdev = kfd_alloc_struct(new_buff->dbgdev);
 if (!new_buff->dbgdev) {
  pr_err("Failed to allocate dbgdev instance\n");
  kfree(new_buff);
  return 0;
 }


 if (pdev->dqm->sched_policy == KFD_SCHED_POLICY_NO_HWS)
  type = DBGDEV_TYPE_NODIQ;

 kfd_dbgdev_init(new_buff->dbgdev, pdev, type);
 *ppmgr = new_buff;

 return 1;
}
