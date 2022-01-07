
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;
 int DRM_SCHED_PRIORITY_HIGH_HW ;
 int DRM_SCHED_PRIORITY_HIGH_SW ;
 int DRM_SCHED_PRIORITY_INVALID ;
 int DRM_SCHED_PRIORITY_LOW ;
 int DRM_SCHED_PRIORITY_NORMAL ;
 int DRM_SCHED_PRIORITY_UNSET ;
 int WARN (int,char*,int) ;

enum drm_sched_priority amdgpu_to_sched_priority(int amdgpu_priority)
{
 switch (amdgpu_priority) {
 case 129:
  return DRM_SCHED_PRIORITY_HIGH_HW;
 case 133:
  return DRM_SCHED_PRIORITY_HIGH_SW;
 case 131:
  return DRM_SCHED_PRIORITY_NORMAL;
 case 132:
 case 128:
  return DRM_SCHED_PRIORITY_LOW;
 case 130:
  return DRM_SCHED_PRIORITY_UNSET;
 default:
  WARN(1, "Invalid context priority %d\n", amdgpu_priority);
  return DRM_SCHED_PRIORITY_INVALID;
 }
}
