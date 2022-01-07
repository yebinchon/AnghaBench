
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packet_manager {TYPE_1__* pmf; TYPE_2__* dqm; } ;
struct kfd_dev {int max_proc_per_quantum; } ;
struct TYPE_4__ {unsigned int processes_count; unsigned int queue_count; unsigned int sdma_queue_count; unsigned int xgmi_sdma_queue_count; struct kfd_dev* dev; } ;
struct TYPE_3__ {unsigned int map_queues_size; unsigned int map_process_size; scalar_t__ runlist_size; } ;


 unsigned int get_queues_num (TYPE_2__*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void pm_calc_rlib_size(struct packet_manager *pm,
    unsigned int *rlib_size,
    bool *over_subscription)
{
 unsigned int process_count, queue_count, compute_queue_count;
 unsigned int map_queue_size;
 unsigned int max_proc_per_quantum = 1;
 struct kfd_dev *dev = pm->dqm->dev;

 process_count = pm->dqm->processes_count;
 queue_count = pm->dqm->queue_count;
 compute_queue_count = queue_count - pm->dqm->sdma_queue_count -
    pm->dqm->xgmi_sdma_queue_count;






 *over_subscription = 0;

 if (dev->max_proc_per_quantum > 1)
  max_proc_per_quantum = dev->max_proc_per_quantum;

 if ((process_count > max_proc_per_quantum) ||
     compute_queue_count > get_queues_num(pm->dqm)) {
  *over_subscription = 1;
  pr_debug("Over subscribed runlist\n");
 }

 map_queue_size = pm->pmf->map_queues_size;

 *rlib_size = process_count * pm->pmf->map_process_size +
       queue_count * map_queue_size;





 if (*over_subscription)
  *rlib_size += pm->pmf->runlist_size;

 pr_debug("runlist ib size %d\n", *rlib_size);
}
