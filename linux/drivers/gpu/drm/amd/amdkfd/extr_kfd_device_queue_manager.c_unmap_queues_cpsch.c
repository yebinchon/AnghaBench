
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct device_queue_manager {int active_runlist; scalar_t__ sdma_queue_count; int packets; int * fence_addr; int fence_gpu_addr; scalar_t__ xgmi_sdma_queue_count; scalar_t__ is_hws_hang; } ;
typedef enum kfd_unmap_queues_filter { ____Placeholder_kfd_unmap_queues_filter } kfd_unmap_queues_filter ;


 int EIO ;
 int KFD_FENCE_COMPLETED ;
 int KFD_FENCE_INIT ;
 int KFD_QUEUE_TYPE_COMPUTE ;
 int amdkfd_fence_wait_timeout (int *,int ,int ) ;
 int pm_release_ib (int *) ;
 int pm_send_query_status (int *,int ,int ) ;
 int pm_send_unmap_queue (int *,int ,int,int ,int,int ) ;
 int pr_debug (char*,scalar_t__,scalar_t__) ;
 int queue_preemption_timeout_ms ;
 int unmap_sdma_queues (struct device_queue_manager*) ;

__attribute__((used)) static int unmap_queues_cpsch(struct device_queue_manager *dqm,
    enum kfd_unmap_queues_filter filter,
    uint32_t filter_param)
{
 int retval = 0;

 if (dqm->is_hws_hang)
  return -EIO;
 if (!dqm->active_runlist)
  return retval;

 pr_debug("Before destroying queues, sdma queue count is : %u, xgmi sdma queue count is : %u\n",
  dqm->sdma_queue_count, dqm->xgmi_sdma_queue_count);

 if (dqm->sdma_queue_count > 0 || dqm->xgmi_sdma_queue_count)
  unmap_sdma_queues(dqm);

 retval = pm_send_unmap_queue(&dqm->packets, KFD_QUEUE_TYPE_COMPUTE,
   filter, filter_param, 0, 0);
 if (retval)
  return retval;

 *dqm->fence_addr = KFD_FENCE_INIT;
 pm_send_query_status(&dqm->packets, dqm->fence_gpu_addr,
    KFD_FENCE_COMPLETED);

 retval = amdkfd_fence_wait_timeout(dqm->fence_addr, KFD_FENCE_COMPLETED,
    queue_preemption_timeout_ms);
 if (retval)
  return retval;

 pm_release_ib(&dqm->packets);
 dqm->active_runlist = 0;

 return retval;
}
