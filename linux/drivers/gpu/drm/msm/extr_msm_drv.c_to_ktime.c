
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_msm_timespec {int tv_nsec; int tv_sec; } ;
typedef int ktime_t ;


 int ktime_set (int ,int ) ;

__attribute__((used)) static inline ktime_t to_ktime(struct drm_msm_timespec timeout)
{
 return ktime_set(timeout.tv_sec, timeout.tv_nsec);
}
