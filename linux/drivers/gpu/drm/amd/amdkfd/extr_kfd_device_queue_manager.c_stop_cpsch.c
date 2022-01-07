
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_queue_manager {int packets; int fence_mem; int dev; } ;


 int KFD_UNMAP_QUEUES_FILTER_ALL_QUEUES ;
 int dqm_lock (struct device_queue_manager*) ;
 int dqm_unlock (struct device_queue_manager*) ;
 int kfd_gtt_sa_free (int ,int ) ;
 int pm_uninit (int *) ;
 int unmap_queues_cpsch (struct device_queue_manager*,int ,int ) ;

__attribute__((used)) static int stop_cpsch(struct device_queue_manager *dqm)
{
 dqm_lock(dqm);
 unmap_queues_cpsch(dqm, KFD_UNMAP_QUEUES_FILTER_ALL_QUEUES, 0);
 dqm_unlock(dqm);

 kfd_gtt_sa_free(dqm->dev, dqm->fence_mem);
 pm_uninit(&dqm->packets);

 return 0;
}
