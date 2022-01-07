
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_gem_object {int resv; } ;
typedef int ktime_t ;


 int EBUSY ;
 int ETIMEDOUT ;
 int MSM_PREP_NOSYNC ;
 int MSM_PREP_WRITE ;
 long dma_resv_wait_timeout_rcu (int ,int,int,unsigned long) ;
 unsigned long timeout_to_jiffies (int *) ;

int msm_gem_cpu_prep(struct drm_gem_object *obj, uint32_t op, ktime_t *timeout)
{
 bool write = !!(op & MSM_PREP_WRITE);
 unsigned long remain =
  op & MSM_PREP_NOSYNC ? 0 : timeout_to_jiffies(timeout);
 long ret;

 ret = dma_resv_wait_timeout_rcu(obj->resv, write,
        1, remain);
 if (ret == 0)
  return remain == 0 ? -EBUSY : -ETIMEDOUT;
 else if (ret < 0)
  return ret;



 return 0;
}
