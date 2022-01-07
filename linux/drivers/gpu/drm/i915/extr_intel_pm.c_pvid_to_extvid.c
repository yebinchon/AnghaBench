
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int const u32 ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_mobile; } ;


 TYPE_1__* INTEL_INFO (struct drm_i915_private*) ;
 int _pxvid_to_vd (int ) ;

__attribute__((used)) static u32 pvid_to_extvid(struct drm_i915_private *dev_priv, u8 pxvid)
{
 const int vd = _pxvid_to_vd(pxvid);
 const int vm = vd - 1125;

 if (INTEL_INFO(dev_priv)->is_mobile)
  return vm > 0 ? vm : 0;

 return vd;
}
