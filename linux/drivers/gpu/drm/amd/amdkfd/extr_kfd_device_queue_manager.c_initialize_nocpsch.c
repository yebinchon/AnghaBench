
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_queue_manager {int* allocated_queues; int vmid_bitmap; unsigned long long sdma_bitmap; unsigned long long xgmi_sdma_bitmap; TYPE_3__* dev; scalar_t__ xgmi_sdma_queue_count; scalar_t__ sdma_queue_count; scalar_t__ next_pipe_to_allocate; scalar_t__ queue_count; int queues; int lock_hidden; } ;
struct TYPE_5__ {int vmid_num_kfd; } ;
struct TYPE_4__ {int queue_bitmap; } ;
struct TYPE_6__ {TYPE_2__ vm_info; TYPE_1__ shared_resources; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int get_num_sdma_queues (struct device_queue_manager*) ;
 int get_num_xgmi_sdma_queues (struct device_queue_manager*) ;
 int get_pipes_per_mec (struct device_queue_manager*) ;
 int get_queues_per_pipe (struct device_queue_manager*) ;
 int* kcalloc (int,int,int ) ;
 int mutex_init (int *) ;
 int pr_debug (char*,int) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int initialize_nocpsch(struct device_queue_manager *dqm)
{
 int pipe, queue;

 pr_debug("num of pipes: %d\n", get_pipes_per_mec(dqm));

 dqm->allocated_queues = kcalloc(get_pipes_per_mec(dqm),
     sizeof(unsigned int), GFP_KERNEL);
 if (!dqm->allocated_queues)
  return -ENOMEM;

 mutex_init(&dqm->lock_hidden);
 INIT_LIST_HEAD(&dqm->queues);
 dqm->queue_count = dqm->next_pipe_to_allocate = 0;
 dqm->sdma_queue_count = 0;
 dqm->xgmi_sdma_queue_count = 0;

 for (pipe = 0; pipe < get_pipes_per_mec(dqm); pipe++) {
  int pipe_offset = pipe * get_queues_per_pipe(dqm);

  for (queue = 0; queue < get_queues_per_pipe(dqm); queue++)
   if (test_bit(pipe_offset + queue,
         dqm->dev->shared_resources.queue_bitmap))
    dqm->allocated_queues[pipe] |= 1 << queue;
 }

 dqm->vmid_bitmap = (1 << dqm->dev->vm_info.vmid_num_kfd) - 1;
 dqm->sdma_bitmap = ~0ULL >> (64 - get_num_sdma_queues(dqm));
 dqm->xgmi_sdma_bitmap = ~0ULL >> (64 - get_num_xgmi_sdma_queues(dqm));

 return 0;
}
