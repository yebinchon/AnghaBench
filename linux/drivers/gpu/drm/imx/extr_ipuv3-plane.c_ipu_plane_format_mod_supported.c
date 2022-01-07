
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct ipu_soc {int dummy; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {struct ipu_soc* ipu; } ;


 int DRM_FORMAT_MOD_LINEAR ;
 int ipu_prg_format_supported (struct ipu_soc*,int ,int ) ;
 int ipu_prg_present (struct ipu_soc*) ;
 TYPE_1__* to_ipu_plane (struct drm_plane*) ;

__attribute__((used)) static bool ipu_plane_format_mod_supported(struct drm_plane *plane,
        uint32_t format, uint64_t modifier)
{
 struct ipu_soc *ipu = to_ipu_plane(plane)->ipu;


 if (modifier == DRM_FORMAT_MOD_LINEAR)
  return 1;


 if (!ipu_prg_present(ipu))
  return 0;

 return ipu_prg_format_supported(ipu, format, modifier);
}
