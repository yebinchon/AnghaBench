
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_queue_manager {scalar_t__ queue_count; scalar_t__ processes_count; int pipeline_mem; int dev; int lock_hidden; int * mqd_mgrs; int allocated_queues; } ;


 int KFD_MQD_TYPE_MAX ;
 int WARN_ON (int) ;
 int kfd_gtt_sa_free (int ,int ) ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void uninitialize(struct device_queue_manager *dqm)
{
 int i;

 WARN_ON(dqm->queue_count > 0 || dqm->processes_count > 0);

 kfree(dqm->allocated_queues);
 for (i = 0 ; i < KFD_MQD_TYPE_MAX ; i++)
  kfree(dqm->mqd_mgrs[i]);
 mutex_destroy(&dqm->lock_hidden);
 kfd_gtt_sa_free(dqm->dev, dqm->pipeline_mem);
}
