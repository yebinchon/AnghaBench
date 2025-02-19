
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {int * eld; int dev; } ;
typedef int i915_reg_t ;


 int const I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int drm_eld_size (int const*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool intel_eld_uptodate(struct drm_connector *connector,
          i915_reg_t reg_eldv, u32 bits_eldv,
          i915_reg_t reg_elda, u32 bits_elda,
          i915_reg_t reg_edid)
{
 struct drm_i915_private *dev_priv = to_i915(connector->dev);
 const u8 *eld = connector->eld;
 u32 tmp;
 int i;

 tmp = I915_READ(reg_eldv);
 tmp &= bits_eldv;

 if (!tmp)
  return 0;

 tmp = I915_READ(reg_elda);
 tmp &= ~bits_elda;
 I915_WRITE(reg_elda, tmp);

 for (i = 0; i < drm_eld_size(eld) / 4; i++)
  if (I915_READ(reg_edid) != *((const u32 *)eld + i))
   return 0;

 return 1;
}
