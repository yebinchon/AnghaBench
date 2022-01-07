
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_rotation_angle { ____Placeholder_dc_rotation_angle } dc_rotation_angle ;





__attribute__((used)) static bool is_vert_scan(enum dc_rotation_angle rotation)
{
 switch (rotation) {
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
