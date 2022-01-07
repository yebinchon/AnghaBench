
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
struct drm_wait_vblank_reply {int tval_usec; scalar_t__ tval_sec; int sequence; } ;
struct drm_device {int dummy; } ;
typedef int ktime_t ;


 int drm_vblank_count_and_time (struct drm_device*,unsigned int,int *) ;
 struct timespec64 ktime_to_timespec64 (int ) ;

__attribute__((used)) static void drm_wait_vblank_reply(struct drm_device *dev, unsigned int pipe,
      struct drm_wait_vblank_reply *reply)
{
 ktime_t now;
 struct timespec64 ts;






 reply->sequence = drm_vblank_count_and_time(dev, pipe, &now);
 ts = ktime_to_timespec64(now);
 reply->tval_sec = (u32)ts.tv_sec;
 reply->tval_usec = ts.tv_nsec / 1000;
}
