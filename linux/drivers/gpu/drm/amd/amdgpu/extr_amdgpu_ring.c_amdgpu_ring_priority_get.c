
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int priority; int priority_mutex; TYPE_1__* funcs; int * num_jobs; } ;
typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;
struct TYPE_2__ {int (* set_priority ) (struct amdgpu_ring*,int) ;} ;


 scalar_t__ atomic_inc_return (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct amdgpu_ring*,int) ;

void amdgpu_ring_priority_get(struct amdgpu_ring *ring,
         enum drm_sched_priority priority)
{
 if (!ring->funcs->set_priority)
  return;

 if (atomic_inc_return(&ring->num_jobs[priority]) <= 0)
  return;

 mutex_lock(&ring->priority_mutex);
 if (priority <= ring->priority)
  goto out_unlock;

 ring->priority = priority;
 ring->funcs->set_priority(ring, priority);

out_unlock:
 mutex_unlock(&ring->priority_mutex);
}
