
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_1D_TILED_THIN1 ;
 int ARRAY_2D_TILED_THIN1 ;
 int ARRAY_LINEAR_GENERAL ;
 int RADEON_TILING_MACRO ;
 int RADEON_TILING_MICRO ;

__attribute__((used)) static u32 evergreen_cs_get_aray_mode(u32 tiling_flags)
{
 if (tiling_flags & RADEON_TILING_MACRO)
  return ARRAY_2D_TILED_THIN1;
 else if (tiling_flags & RADEON_TILING_MICRO)
  return ARRAY_1D_TILED_THIN1;
 else
  return ARRAY_LINEAR_GENERAL;
}
