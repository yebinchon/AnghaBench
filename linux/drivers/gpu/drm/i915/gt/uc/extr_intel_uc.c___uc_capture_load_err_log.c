
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* vma; } ;
struct intel_guc {TYPE_2__ log; } ;
struct intel_uc {scalar_t__ load_err_log; struct intel_guc guc; } ;
struct TYPE_3__ {int obj; } ;


 scalar_t__ i915_gem_object_get (int ) ;

__attribute__((used)) static void __uc_capture_load_err_log(struct intel_uc *uc)
{
 struct intel_guc *guc = &uc->guc;

 if (guc->log.vma && !uc->load_err_log)
  uc->load_err_log = i915_gem_object_get(guc->log.vma->obj);
}
