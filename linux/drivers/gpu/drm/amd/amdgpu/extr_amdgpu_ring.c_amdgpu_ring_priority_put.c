
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int priority; int priority_mutex; TYPE_1__* funcs; int * num_jobs; } ;
typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;
struct TYPE_2__ {int (* set_priority ) (struct amdgpu_ring*,int) ;} ;


 int DRM_SCHED_PRIORITY_MIN ;
 int DRM_SCHED_PRIORITY_NORMAL ;
 scalar_t__ atomic_dec_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct amdgpu_ring*,int) ;

void amdgpu_ring_priority_put(struct amdgpu_ring *ring,
         enum drm_sched_priority priority)
{
 int i;

 if (!ring->funcs->set_priority)
  return;

 if (atomic_dec_return(&ring->num_jobs[priority]) > 0)
  return;


 if (priority == DRM_SCHED_PRIORITY_NORMAL)
  return;

 mutex_lock(&ring->priority_mutex);

 if (ring->priority > priority)
  goto out_unlock;


 for (i = priority; i >= DRM_SCHED_PRIORITY_MIN; i--) {
  if (i == DRM_SCHED_PRIORITY_NORMAL
    || atomic_read(&ring->num_jobs[i])) {
   ring->priority = i;
   ring->funcs->set_priority(ring, i);
   break;
  }
 }

out_unlock:
 mutex_unlock(&ring->priority_mutex);
}
