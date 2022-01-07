
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct drm_v3d_wait_bo {scalar_t__ timeout_ns; scalar_t__ pad; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int ktime_t ;


 int EAGAIN ;
 int EINVAL ;
 int ETIME ;
 int drm_gem_dma_resv_wait (struct drm_file*,int ,int,unsigned long) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 unsigned long nsecs_to_jiffies_timeout (scalar_t__) ;

int
v3d_wait_bo_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 int ret;
 struct drm_v3d_wait_bo *args = data;
 ktime_t start = ktime_get();
 u64 delta_ns;
 unsigned long timeout_jiffies =
  nsecs_to_jiffies_timeout(args->timeout_ns);

 if (args->pad != 0)
  return -EINVAL;

 ret = drm_gem_dma_resv_wait(file_priv, args->handle,
           1, timeout_jiffies);




 delta_ns = ktime_to_ns(ktime_sub(ktime_get(), start));
 if (delta_ns < args->timeout_ns)
  args->timeout_ns -= delta_ns;
 else
  args->timeout_ns = 0;


 if (ret == -ETIME && args->timeout_ns)
  ret = -EAGAIN;

 return ret;
}
