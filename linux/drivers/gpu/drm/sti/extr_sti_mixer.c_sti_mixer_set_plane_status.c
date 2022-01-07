
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_plane {int dummy; } ;
struct sti_mixer {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,char*,int ,int ) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int GAM_MIXER_CTL ;
 int sti_mixer_get_plane_mask (struct sti_plane*) ;
 int sti_mixer_reg_read (struct sti_mixer*,int ) ;
 int sti_mixer_reg_write (struct sti_mixer*,int ,int ) ;
 int sti_mixer_to_str (struct sti_mixer*) ;
 int sti_plane_to_str (struct sti_plane*) ;

int sti_mixer_set_plane_status(struct sti_mixer *mixer,
          struct sti_plane *plane, bool status)
{
 u32 mask, val;

 DRM_DEBUG_DRIVER("%s %s %s\n", status ? "enable" : "disable",
    sti_mixer_to_str(mixer), sti_plane_to_str(plane));

 mask = sti_mixer_get_plane_mask(plane);
 if (!mask) {
  DRM_ERROR("Can't find layer mask\n");
  return -EINVAL;
 }

 val = sti_mixer_reg_read(mixer, GAM_MIXER_CTL);
 val &= ~mask;
 val |= status ? mask : 0;
 sti_mixer_reg_write(mixer, GAM_MIXER_CTL, val);

 return 0;
}
