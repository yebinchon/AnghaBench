
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;


 int CAP_SYS_NICE ;
 int DRM_SCHED_PRIORITY_NORMAL ;
 int EACCES ;
 scalar_t__ capable (int ) ;
 scalar_t__ drm_is_current_master (struct drm_file*) ;

__attribute__((used)) static int amdgpu_ctx_priority_permit(struct drm_file *filp,
          enum drm_sched_priority priority)
{

 if (priority <= DRM_SCHED_PRIORITY_NORMAL)
  return 0;

 if (capable(CAP_SYS_NICE))
  return 0;

 if (drm_is_current_master(filp))
  return 0;

 return -EACCES;
}
