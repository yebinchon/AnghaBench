
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct intel_vgpu {int id; TYPE_1__* gvt; } ;
struct TYPE_7__ {TYPE_4__* primary; } ;
struct drm_i915_private {TYPE_3__ drm; } ;
struct TYPE_8__ {TYPE_2__* kdev; } ;
struct TYPE_6__ {struct kobject kobj; } ;
struct TYPE_5__ {struct drm_i915_private* dev_priv; } ;


 int KOBJ_ADD ;
 int kobject_uevent_env (struct kobject*,int ,char**) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int send_display_ready_uevent(struct intel_vgpu *vgpu, int ready)
{
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
 struct kobject *kobj = &dev_priv->drm.primary->kdev->kobj;
 char *env[3] = {((void*)0), ((void*)0), ((void*)0)};
 char vmid_str[20];
 char display_ready_str[20];

 snprintf(display_ready_str, 20, "GVT_DISPLAY_READY=%d", ready);
 env[0] = display_ready_str;

 snprintf(vmid_str, 20, "VMID=%d", vgpu->id);
 env[1] = vmid_str;

 return kobject_uevent_env(kobj, KOBJ_ADD, env);
}
