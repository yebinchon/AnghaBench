
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int path; } ;
struct TYPE_3__ {int path; } ;
struct i915_error_uc {int guc_log; TYPE_2__ huc_fw; TYPE_1__ guc_fw; } ;
struct i915_gpu_state {struct i915_error_uc uc; } ;


 int i915_error_object_free (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void cleanup_uc_state(struct i915_gpu_state *error)
{
 struct i915_error_uc *error_uc = &error->uc;

 kfree(error_uc->guc_fw.path);
 kfree(error_uc->huc_fw.path);
 i915_error_object_free(error_uc->guc_log);
}
