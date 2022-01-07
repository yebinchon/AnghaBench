
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct packet_manager {int allocated; int lock; TYPE_2__* ib_buffer_obj; TYPE_1__* dqm; } ;
struct TYPE_4__ {int gpu_addr; void* cpu_ptr; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int kfd_gtt_sa_allocate (int ,unsigned int,TYPE_2__**) ;
 int memset (unsigned int*,int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_calc_rlib_size (struct packet_manager*,unsigned int*,int*) ;
 int pr_err (char*) ;

__attribute__((used)) static int pm_allocate_runlist_ib(struct packet_manager *pm,
    unsigned int **rl_buffer,
    uint64_t *rl_gpu_buffer,
    unsigned int *rl_buffer_size,
    bool *is_over_subscription)
{
 int retval;

 if (WARN_ON(pm->allocated))
  return -EINVAL;

 pm_calc_rlib_size(pm, rl_buffer_size, is_over_subscription);

 mutex_lock(&pm->lock);

 retval = kfd_gtt_sa_allocate(pm->dqm->dev, *rl_buffer_size,
     &pm->ib_buffer_obj);

 if (retval) {
  pr_err("Failed to allocate runlist IB\n");
  goto out;
 }

 *(void **)rl_buffer = pm->ib_buffer_obj->cpu_ptr;
 *rl_gpu_buffer = pm->ib_buffer_obj->gpu_addr;

 memset(*rl_buffer, 0, *rl_buffer_size);
 pm->allocated = 1;

out:
 mutex_unlock(&pm->lock);
 return retval;
}
