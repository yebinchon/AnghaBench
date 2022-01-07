
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scheduling_resources {unsigned long long queue_mask; unsigned long long gws_mask; int vmid_mask; scalar_t__ gds_heap_size; scalar_t__ gds_heap_base; scalar_t__ oac_mask; } ;
struct device_queue_manager {int packets; TYPE_2__* dev; } ;
struct TYPE_3__ {int num_queue_per_pipe; int num_pipe_per_mec; int queue_bitmap; int compute_vmid_bitmap; } ;
struct TYPE_4__ {TYPE_1__ shared_resources; } ;


 int KGD_MAX_QUEUES ;
 scalar_t__ WARN_ON (int) ;
 int pm_send_set_resources (int *,struct scheduling_resources*) ;
 int pr_debug (char*,int ,unsigned long long) ;
 int pr_err (char*,int) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int set_sched_resources(struct device_queue_manager *dqm)
{
 int i, mec;
 struct scheduling_resources res;

 res.vmid_mask = dqm->dev->shared_resources.compute_vmid_bitmap;

 res.queue_mask = 0;
 for (i = 0; i < KGD_MAX_QUEUES; ++i) {
  mec = (i / dqm->dev->shared_resources.num_queue_per_pipe)
   / dqm->dev->shared_resources.num_pipe_per_mec;

  if (!test_bit(i, dqm->dev->shared_resources.queue_bitmap))
   continue;


  if (mec > 0)
   continue;





  if (WARN_ON(i >= (sizeof(res.queue_mask)*8))) {
   pr_err("Invalid queue enabled by amdgpu: %d\n", i);
   break;
  }

  res.queue_mask |= (1ull << i);
 }
 res.gws_mask = ~0ull;
 res.oac_mask = res.gds_heap_base = res.gds_heap_size = 0;

 pr_debug("Scheduling resources:\n"
   "vmid mask: 0x%8X\n"
   "queue mask: 0x%8llX\n",
   res.vmid_mask, res.queue_mask);

 return pm_send_set_resources(&dqm->packets, &res);
}
