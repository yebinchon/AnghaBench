
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct drm_i915_mocs_table {int dummy; } ;



__attribute__((used)) static inline u32 l3cc_combine(const struct drm_i915_mocs_table *table,
          u16 low,
          u16 high)
{
 return low | high << 16;
}
