
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_queue_manager {int active_runlist; unsigned long long sdma_bitmap; unsigned long long xgmi_sdma_bitmap; int hw_exception_work; scalar_t__ xgmi_sdma_queue_count; scalar_t__ sdma_queue_count; scalar_t__ processes_count; scalar_t__ queue_count; int queues; int lock_hidden; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int get_num_sdma_queues (struct device_queue_manager*) ;
 int get_num_xgmi_sdma_queues (struct device_queue_manager*) ;
 int get_pipes_per_mec (struct device_queue_manager*) ;
 int kfd_process_hw_exception ;
 int mutex_init (int *) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int initialize_cpsch(struct device_queue_manager *dqm)
{
 pr_debug("num of pipes: %d\n", get_pipes_per_mec(dqm));

 mutex_init(&dqm->lock_hidden);
 INIT_LIST_HEAD(&dqm->queues);
 dqm->queue_count = dqm->processes_count = 0;
 dqm->sdma_queue_count = 0;
 dqm->xgmi_sdma_queue_count = 0;
 dqm->active_runlist = 0;
 dqm->sdma_bitmap = ~0ULL >> (64 - get_num_sdma_queues(dqm));
 dqm->xgmi_sdma_bitmap = ~0ULL >> (64 - get_num_xgmi_sdma_queues(dqm));

 INIT_WORK(&dqm->hw_exception_work, kfd_process_hw_exception);

 return 0;
}
