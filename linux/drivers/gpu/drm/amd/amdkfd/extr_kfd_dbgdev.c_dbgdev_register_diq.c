
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_properties {int type; } ;
struct kfd_dbgdev {struct kernel_queue* kq; int pqm; int dev; } ;
struct kernel_queue {int dummy; } ;


 int EFAULT ;
 int KFD_QUEUE_TYPE_DIQ ;
 int pqm_create_queue (int ,int ,int *,struct queue_properties*,unsigned int*) ;
 int pqm_destroy_queue (int ,unsigned int) ;
 struct kernel_queue* pqm_get_kernel_queue (int ,unsigned int) ;
 int pr_debug (char*,unsigned int) ;
 int pr_err (char*) ;

__attribute__((used)) static int dbgdev_register_diq(struct kfd_dbgdev *dbgdev)
{
 struct queue_properties properties;
 unsigned int qid;
 struct kernel_queue *kq = ((void*)0);
 int status;

 properties.type = KFD_QUEUE_TYPE_DIQ;

 status = pqm_create_queue(dbgdev->pqm, dbgdev->dev, ((void*)0),
    &properties, &qid);

 if (status) {
  pr_err("Failed to create DIQ\n");
  return status;
 }

 pr_debug("DIQ Created with queue id: %d\n", qid);

 kq = pqm_get_kernel_queue(dbgdev->pqm, qid);

 if (!kq) {
  pr_err("Error getting DIQ\n");
  pqm_destroy_queue(dbgdev->pqm, qid);
  return -EFAULT;
 }

 dbgdev->kq = kq;

 return status;
}
