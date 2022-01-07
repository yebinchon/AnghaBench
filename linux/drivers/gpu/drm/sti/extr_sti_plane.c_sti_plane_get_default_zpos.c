
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;






__attribute__((used)) static int sti_plane_get_default_zpos(enum drm_plane_type type)
{
 switch (type) {
 case 128:
  return 0;
 case 129:
  return 1;
 case 130:
  return 7;
 }
 return 0;
}
