
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BIT (int ) ;
 int PLANE_SPRITE0 ;
 int PLANE_SPRITE1 ;

__attribute__((used)) static bool vlv_need_sprite0_fifo_workaround(unsigned int active_planes)
{
 return (active_planes & (BIT(PLANE_SPRITE0) |
     BIT(PLANE_SPRITE1))) == BIT(PLANE_SPRITE1);
}
