
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct etnaviv_gpu {int fence_event; } ;
struct etnaviv_gem_object {int dummy; } ;


 int EBUSY ;
 long ERESTARTSYS ;
 int ETIMEDOUT ;
 unsigned long etnaviv_timeout_to_jiffies (struct timespec*) ;
 int is_active (struct etnaviv_gem_object*) ;
 long wait_event_interruptible_timeout (int ,int,unsigned long) ;

int etnaviv_gpu_wait_obj_inactive(struct etnaviv_gpu *gpu,
 struct etnaviv_gem_object *etnaviv_obj, struct timespec *timeout)
{
 unsigned long remaining;
 long ret;

 if (!timeout)
  return !is_active(etnaviv_obj) ? 0 : -EBUSY;

 remaining = etnaviv_timeout_to_jiffies(timeout);

 ret = wait_event_interruptible_timeout(gpu->fence_event,
            !is_active(etnaviv_obj),
            remaining);
 if (ret > 0)
  return 0;
 else if (ret == -ERESTARTSYS)
  return -ERESTARTSYS;
 else
  return -ETIMEDOUT;
}
