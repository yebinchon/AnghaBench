
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_rotation_angle { ____Placeholder_dc_rotation_angle } dc_rotation_angle ;


 int ROTATION_ANGLE_180 ;
 int ROTATION_ANGLE_270 ;
 int ROTATION_ANGLE_90 ;

__attribute__((used)) static inline void get_vp_scan_direction(
 enum dc_rotation_angle rotation,
 bool horizontal_mirror,
 bool *orthogonal_rotation,
 bool *flip_vert_scan_dir,
 bool *flip_horz_scan_dir)
{
 *orthogonal_rotation = 0;
 *flip_vert_scan_dir = 0;
 *flip_horz_scan_dir = 0;
 if (rotation == ROTATION_ANGLE_180) {
  *flip_vert_scan_dir = 1;
  *flip_horz_scan_dir = 1;
 } else if (rotation == ROTATION_ANGLE_90) {
  *orthogonal_rotation = 1;
  *flip_horz_scan_dir = 1;
 } else if (rotation == ROTATION_ANGLE_270) {
  *orthogonal_rotation = 1;
  *flip_vert_scan_dir = 1;
 }

 if (horizontal_mirror)
  *flip_horz_scan_dir = !*flip_horz_scan_dir;
}
