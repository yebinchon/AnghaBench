
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum plane_id { ____Placeholder_plane_id } plane_id ;


 int G4X_WM_LEVEL_NORMAL ;
 int MISSING_CASE (int) ;




__attribute__((used)) static int g4x_plane_fifo_size(enum plane_id plane_id, int level)
{
 switch (plane_id) {
 case 130:
  return 63;
 case 129:
  return level == G4X_WM_LEVEL_NORMAL ? 127 : 511;
 case 128:
  return level == G4X_WM_LEVEL_NORMAL ? 127 : 0;
 default:
  MISSING_CASE(plane_id);
  return 0;
 }
}
