
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct drm_display_mode {int flags; } ;
struct drm_connector {int dummy; } ;


 int DRM_MODE_FLAG_3D_FRAME_PACKING ;
 int DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF ;
 int DRM_MODE_FLAG_3D_TOP_AND_BOTTOM ;
 struct drm_display_mode* drm_display_mode_from_vic_index (struct drm_connector*,int const*,int ,int ) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;

__attribute__((used)) static int add_3d_struct_modes(struct drm_connector *connector, u16 structure,
          const u8 *video_db, u8 video_len, u8 video_index)
{
 struct drm_display_mode *newmode;
 int modes = 0;

 if (structure & (1 << 0)) {
  newmode = drm_display_mode_from_vic_index(connector, video_db,
         video_len,
         video_index);
  if (newmode) {
   newmode->flags |= DRM_MODE_FLAG_3D_FRAME_PACKING;
   drm_mode_probed_add(connector, newmode);
   modes++;
  }
 }
 if (structure & (1 << 6)) {
  newmode = drm_display_mode_from_vic_index(connector, video_db,
         video_len,
         video_index);
  if (newmode) {
   newmode->flags |= DRM_MODE_FLAG_3D_TOP_AND_BOTTOM;
   drm_mode_probed_add(connector, newmode);
   modes++;
  }
 }
 if (structure & (1 << 8)) {
  newmode = drm_display_mode_from_vic_index(connector, video_db,
         video_len,
         video_index);
  if (newmode) {
   newmode->flags |= DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF;
   drm_mode_probed_add(connector, newmode);
   modes++;
  }
 }

 return modes;
}
