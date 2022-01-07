
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int vma; } ;
struct TYPE_14__ {int path; } ;
struct TYPE_12__ {TYPE_4__ log; TYPE_7__ fw; } ;
struct TYPE_10__ {TYPE_7__ fw; } ;
struct intel_uc {TYPE_5__ guc; TYPE_3__ huc; } ;
struct TYPE_9__ {int has_gt_uc; } ;
struct TYPE_13__ {void* path; } ;
struct i915_error_uc {int guc_log; TYPE_6__ huc_fw; TYPE_6__ guc_fw; } ;
struct i915_gpu_state {TYPE_2__ device_info; struct i915_error_uc uc; struct drm_i915_private* i915; } ;
struct TYPE_8__ {struct intel_uc uc; } ;
struct drm_i915_private {TYPE_1__ gt; } ;
struct compress {int dummy; } ;


 int ALLOW_FAIL ;
 int i915_error_object_create (struct drm_i915_private*,int ,struct compress*) ;
 void* kstrdup (int ,int ) ;
 int memcpy (TYPE_6__*,TYPE_7__*,int) ;

__attribute__((used)) static void
capture_uc_state(struct i915_gpu_state *error, struct compress *compress)
{
 struct drm_i915_private *i915 = error->i915;
 struct i915_error_uc *error_uc = &error->uc;
 struct intel_uc *uc = &i915->gt.uc;


 if (!error->device_info.has_gt_uc)
  return;

 memcpy(&error_uc->guc_fw, &uc->guc.fw, sizeof(uc->guc.fw));
 memcpy(&error_uc->huc_fw, &uc->huc.fw, sizeof(uc->huc.fw));





 error_uc->guc_fw.path = kstrdup(uc->guc.fw.path, ALLOW_FAIL);
 error_uc->huc_fw.path = kstrdup(uc->huc.fw.path, ALLOW_FAIL);
 error_uc->guc_log = i915_error_object_create(i915,
           uc->guc.log.vma,
           compress);
}
