
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PSB_2D_COPYORDER_BL2TR ;
 int PSB_2D_COPYORDER_BR2TL ;
 int PSB_2D_COPYORDER_TL2BR ;
 int PSB_2D_COPYORDER_TR2BL ;

__attribute__((used)) static u32 psb_accel_2d_copy_direction(int xdir, int ydir)
{
 if (xdir < 0)
  return (ydir < 0) ? PSB_2D_COPYORDER_BR2TL :
      PSB_2D_COPYORDER_TR2BL;
 else
  return (ydir < 0) ? PSB_2D_COPYORDER_BL2TR :
      PSB_2D_COPYORDER_TL2BR;
}
