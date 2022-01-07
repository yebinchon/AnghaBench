
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct drm_display_mode {scalar_t__ vrefresh; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,int *) ;
 int drm_valid_cea_vic (size_t) ;
 int * edid_cea_modes ;
 size_t svd_to_vic (size_t const) ;

__attribute__((used)) static struct drm_display_mode *
drm_display_mode_from_vic_index(struct drm_connector *connector,
    const u8 *video_db, u8 video_len,
    u8 video_index)
{
 struct drm_device *dev = connector->dev;
 struct drm_display_mode *newmode;
 u8 vic;

 if (video_db == ((void*)0) || video_index >= video_len)
  return ((void*)0);


 vic = svd_to_vic(video_db[video_index]);
 if (!drm_valid_cea_vic(vic))
  return ((void*)0);

 newmode = drm_mode_duplicate(dev, &edid_cea_modes[vic]);
 if (!newmode)
  return ((void*)0);

 newmode->vrefresh = 0;

 return newmode;
}
