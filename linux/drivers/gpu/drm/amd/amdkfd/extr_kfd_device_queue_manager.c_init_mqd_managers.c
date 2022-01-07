
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mqd_manager {int dummy; } ;
struct TYPE_2__ {struct mqd_manager* (* mqd_manager_init ) (int,int ) ;} ;
struct device_queue_manager {struct mqd_manager** mqd_mgrs; int dev; TYPE_1__ asic_ops; } ;


 int ENOMEM ;
 int KFD_MQD_TYPE_MAX ;
 int kfree (struct mqd_manager*) ;
 int pr_err (char*,int) ;
 struct mqd_manager* stub1 (int,int ) ;

__attribute__((used)) static int init_mqd_managers(struct device_queue_manager *dqm)
{
 int i, j;
 struct mqd_manager *mqd_mgr;

 for (i = 0; i < KFD_MQD_TYPE_MAX; i++) {
  mqd_mgr = dqm->asic_ops.mqd_manager_init(i, dqm->dev);
  if (!mqd_mgr) {
   pr_err("mqd manager [%d] initialization failed\n", i);
   goto out_free;
  }
  dqm->mqd_mgrs[i] = mqd_mgr;
 }

 return 0;

out_free:
 for (j = 0; j < i; j++) {
  kfree(dqm->mqd_mgrs[j]);
  dqm->mqd_mgrs[j] = ((void*)0);
 }

 return -ENOMEM;
}
