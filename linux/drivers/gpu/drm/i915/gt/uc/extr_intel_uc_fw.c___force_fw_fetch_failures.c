
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc_fw {char* path; int user_overridden; scalar_t__ minor_ver_wanted; scalar_t__ major_ver_wanted; } ;
struct drm_i915_private {int dummy; } ;


 int EINVAL ;
 scalar_t__ i915_inject_load_error (struct drm_i915_private*,int) ;

__attribute__((used)) static void __force_fw_fetch_failures(struct intel_uc_fw *uc_fw,
          struct drm_i915_private *i915,
          int e)
{
 bool user = e == -EINVAL;

 if (i915_inject_load_error(i915, e)) {

  uc_fw->path = "<invalid>";
  uc_fw->user_overridden = user;
 } else if (i915_inject_load_error(i915, e)) {

  uc_fw->major_ver_wanted += 1;
  uc_fw->minor_ver_wanted = 0;
  uc_fw->user_overridden = user;
 } else if (i915_inject_load_error(i915, e)) {

  uc_fw->minor_ver_wanted += 1;
  uc_fw->user_overridden = user;
 } else if (uc_fw->major_ver_wanted && i915_inject_load_error(i915, e)) {

  uc_fw->major_ver_wanted -= 1;
  uc_fw->minor_ver_wanted = 0;
  uc_fw->user_overridden = user;
 } else if (uc_fw->minor_ver_wanted && i915_inject_load_error(i915, e)) {

  uc_fw->minor_ver_wanted -= 1;
  uc_fw->user_overridden = user;
 } else if (user && i915_inject_load_error(i915, e)) {

  uc_fw->major_ver_wanted = 0;
  uc_fw->minor_ver_wanted = 0;
  uc_fw->user_overridden = 1;
 }
}
