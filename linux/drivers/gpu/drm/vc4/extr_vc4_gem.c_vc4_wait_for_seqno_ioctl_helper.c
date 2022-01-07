
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct drm_device {int dummy; } ;


 int EINTR ;
 int ERESTARTSYS ;
 unsigned long jiffies ;
 unsigned long long jiffies_to_nsecs (unsigned long) ;
 int vc4_wait_for_seqno (struct drm_device*,unsigned long long,unsigned long long,int) ;

__attribute__((used)) static int
vc4_wait_for_seqno_ioctl_helper(struct drm_device *dev,
    uint64_t seqno,
    uint64_t *timeout_ns)
{
 unsigned long start = jiffies;
 int ret = vc4_wait_for_seqno(dev, seqno, *timeout_ns, 1);

 if ((ret == -EINTR || ret == -ERESTARTSYS) && *timeout_ns != ~0ull) {
  uint64_t delta = jiffies_to_nsecs(jiffies - start);

  if (*timeout_ns >= delta)
   *timeout_ns -= delta;
 }

 return ret;
}
