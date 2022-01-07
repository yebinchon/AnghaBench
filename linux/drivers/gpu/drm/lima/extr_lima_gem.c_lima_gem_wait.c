
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_file {int dummy; } ;
typedef int s64 ;


 long EBUSY ;
 long ETIME ;
 long ETIMEDOUT ;
 int LIMA_GEM_WAIT_WRITE ;
 long drm_gem_dma_resv_wait (struct drm_file*,int,int,long) ;
 long drm_timeout_abs_to_jiffies (int ) ;

int lima_gem_wait(struct drm_file *file, u32 handle, u32 op, s64 timeout_ns)
{
 bool write = op & LIMA_GEM_WAIT_WRITE;
 long ret, timeout;

 if (!op)
  return 0;

 timeout = drm_timeout_abs_to_jiffies(timeout_ns);

 ret = drm_gem_dma_resv_wait(file, handle, write, timeout);
 if (ret == -ETIME)
  ret = timeout ? -ETIMEDOUT : -EBUSY;

 return ret;
}
