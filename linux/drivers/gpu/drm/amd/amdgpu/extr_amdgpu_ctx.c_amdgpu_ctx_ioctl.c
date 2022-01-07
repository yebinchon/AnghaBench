
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ctx_id; } ;
struct TYPE_7__ {TYPE_2__ alloc; } ;
struct TYPE_5__ {int op; int priority; int ctx_id; } ;
union drm_amdgpu_ctx {TYPE_3__ out; TYPE_1__ in; } ;
typedef int uint32_t ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_fpriv {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;






 int DRM_SCHED_PRIORITY_INVALID ;
 int DRM_SCHED_PRIORITY_NORMAL ;
 int EINVAL ;
 int amdgpu_ctx_alloc (struct amdgpu_device*,struct amdgpu_fpriv*,struct drm_file*,int,int *) ;
 int amdgpu_ctx_free (struct amdgpu_fpriv*,int ) ;
 int amdgpu_ctx_query (struct amdgpu_device*,struct amdgpu_fpriv*,int ,TYPE_3__*) ;
 int amdgpu_ctx_query2 (struct amdgpu_device*,struct amdgpu_fpriv*,int ,TYPE_3__*) ;
 int amdgpu_to_sched_priority (int ) ;

int amdgpu_ctx_ioctl(struct drm_device *dev, void *data,
       struct drm_file *filp)
{
 int r;
 uint32_t id;
 enum drm_sched_priority priority;

 union drm_amdgpu_ctx *args = data;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_fpriv *fpriv = filp->driver_priv;

 r = 0;
 id = args->in.ctx_id;
 priority = amdgpu_to_sched_priority(args->in.priority);



 if (priority == DRM_SCHED_PRIORITY_INVALID)
  priority = DRM_SCHED_PRIORITY_NORMAL;

 switch (args->in.op) {
 case 131:
  r = amdgpu_ctx_alloc(adev, fpriv, filp, priority, &id);
  args->out.alloc.ctx_id = id;
  break;
 case 130:
  r = amdgpu_ctx_free(fpriv, id);
  break;
 case 129:
  r = amdgpu_ctx_query(adev, fpriv, id, &args->out);
  break;
 case 128:
  r = amdgpu_ctx_query2(adev, fpriv, id, &args->out);
  break;
 default:
  return -EINVAL;
 }

 return r;
}
