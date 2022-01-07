
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;
typedef enum dc_rotation_angle { ____Placeholder_dc_rotation_angle } dc_rotation_angle ;


 int DCSURF_SURFACE_CONFIG ;
 int H_MIRROR_EN ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int ROTATION_ANGLE ;
 int ROTATION_ANGLE_0 ;
 int ROTATION_ANGLE_180 ;
 int ROTATION_ANGLE_270 ;
 int ROTATION_ANGLE_90 ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;

void hubp1_program_rotation(
 struct hubp *hubp,
 enum dc_rotation_angle rotation,
 bool horizontal_mirror)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);
 uint32_t mirror;


 if (horizontal_mirror)
  mirror = 1;
 else
  mirror = 0;


 if (rotation == ROTATION_ANGLE_0)
  REG_UPDATE_2(DCSURF_SURFACE_CONFIG,
    ROTATION_ANGLE, 0,
    H_MIRROR_EN, mirror);
 else if (rotation == ROTATION_ANGLE_90)
  REG_UPDATE_2(DCSURF_SURFACE_CONFIG,
    ROTATION_ANGLE, 1,
    H_MIRROR_EN, mirror);
 else if (rotation == ROTATION_ANGLE_180)
  REG_UPDATE_2(DCSURF_SURFACE_CONFIG,
    ROTATION_ANGLE, 2,
    H_MIRROR_EN, mirror);
 else if (rotation == ROTATION_ANGLE_270)
  REG_UPDATE_2(DCSURF_SURFACE_CONFIG,
    ROTATION_ANGLE, 3,
    H_MIRROR_EN, mirror);
}
