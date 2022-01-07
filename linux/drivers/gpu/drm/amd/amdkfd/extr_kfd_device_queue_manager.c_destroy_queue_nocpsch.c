
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int dummy; } ;
struct qcm_process_device {int dummy; } ;
struct device_queue_manager {int dummy; } ;


 int destroy_queue_nocpsch_locked (struct device_queue_manager*,struct qcm_process_device*,struct queue*) ;
 int dqm_lock (struct device_queue_manager*) ;
 int dqm_unlock (struct device_queue_manager*) ;

__attribute__((used)) static int destroy_queue_nocpsch(struct device_queue_manager *dqm,
    struct qcm_process_device *qpd,
    struct queue *q)
{
 int retval;

 dqm_lock(dqm);
 retval = destroy_queue_nocpsch_locked(dqm, qpd, q);
 dqm_unlock(dqm);

 return retval;
}
