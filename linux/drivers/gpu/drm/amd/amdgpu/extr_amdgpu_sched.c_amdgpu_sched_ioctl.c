
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int op; int ctx_id; int fd; int priority; } ;
union drm_amdgpu_sched {TYPE_1__ in; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_device {int dummy; } ;
typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;




 int DRM_ERROR (char*,int) ;
 int DRM_SCHED_PRIORITY_INVALID ;
 int EINVAL ;
 int amdgpu_sched_context_priority_override (struct amdgpu_device*,int ,int ,int) ;
 int amdgpu_sched_process_priority_override (struct amdgpu_device*,int ,int) ;
 int amdgpu_to_sched_priority (int ) ;

int amdgpu_sched_ioctl(struct drm_device *dev, void *data,
         struct drm_file *filp)
{
 union drm_amdgpu_sched *args = data;
 struct amdgpu_device *adev = dev->dev_private;
 enum drm_sched_priority priority;
 int r;

 priority = amdgpu_to_sched_priority(args->in.priority);
 if (priority == DRM_SCHED_PRIORITY_INVALID)
  return -EINVAL;

 switch (args->in.op) {
 case 128:
  r = amdgpu_sched_process_priority_override(adev,
          args->in.fd,
          priority);
  break;
 case 129:
  r = amdgpu_sched_context_priority_override(adev,
          args->in.fd,
          args->in.ctx_id,
          priority);
  break;
 default:
  DRM_ERROR("Invalid sched op specified: %d\n", args->in.op);
  r = -EINVAL;
  break;
 }

 return r;
}
