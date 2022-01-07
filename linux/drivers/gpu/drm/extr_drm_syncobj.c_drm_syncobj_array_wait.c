
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct drm_syncobj_wait {void* first_signaled; int flags; int count_handles; int timeout_nsec; } ;
struct drm_syncobj_timeline_wait {void* first_signaled; int flags; int count_handles; int points; int timeout_nsec; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 long drm_syncobj_array_wait_timeout (struct drm_syncobj**,int *,int ,int ,long,void**) ;
 long drm_timeout_abs_to_jiffies (int ) ;
 int * u64_to_user_ptr (int ) ;

__attribute__((used)) static int drm_syncobj_array_wait(struct drm_device *dev,
      struct drm_file *file_private,
      struct drm_syncobj_wait *wait,
      struct drm_syncobj_timeline_wait *timeline_wait,
      struct drm_syncobj **syncobjs, bool timeline)
{
 signed long timeout = 0;
 uint32_t first = ~0;

 if (!timeline) {
  timeout = drm_timeout_abs_to_jiffies(wait->timeout_nsec);
  timeout = drm_syncobj_array_wait_timeout(syncobjs,
        ((void*)0),
        wait->count_handles,
        wait->flags,
        timeout, &first);
  if (timeout < 0)
   return timeout;
  wait->first_signaled = first;
 } else {
  timeout = drm_timeout_abs_to_jiffies(timeline_wait->timeout_nsec);
  timeout = drm_syncobj_array_wait_timeout(syncobjs,
        u64_to_user_ptr(timeline_wait->points),
        timeline_wait->count_handles,
        timeline_wait->flags,
        timeout, &first);
  if (timeout < 0)
   return timeout;
  timeline_wait->first_signaled = first;
 }
 return 0;
}
