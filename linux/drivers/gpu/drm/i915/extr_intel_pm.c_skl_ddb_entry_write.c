
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_ddb_entry {int end; int start; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int I915_WRITE_FW (int ,int) ;

__attribute__((used)) static void skl_ddb_entry_write(struct drm_i915_private *dev_priv,
    i915_reg_t reg,
    const struct skl_ddb_entry *entry)
{
 if (entry->end)
  I915_WRITE_FW(reg, (entry->end - 1) << 16 | entry->start);
 else
  I915_WRITE_FW(reg, 0);
}
