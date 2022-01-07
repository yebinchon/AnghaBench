
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MI_WAIT_FOR_PLANE_A_FLIP_PENDING ;
 int MI_WAIT_FOR_PLANE_B_FLIP_PENDING ;
 int MI_WAIT_FOR_PLANE_C_FLIP_PENDING ;
 int MI_WAIT_FOR_SPRITE_A_FLIP_PENDING ;
 int MI_WAIT_FOR_SPRITE_B_FLIP_PENDING ;
 int MI_WAIT_FOR_SPRITE_C_FLIP_PENDING ;

__attribute__((used)) static bool is_wait_for_flip_pending(u32 cmd)
{
 return cmd & (MI_WAIT_FOR_PLANE_A_FLIP_PENDING |
   MI_WAIT_FOR_PLANE_B_FLIP_PENDING |
   MI_WAIT_FOR_PLANE_C_FLIP_PENDING |
   MI_WAIT_FOR_SPRITE_A_FLIP_PENDING |
   MI_WAIT_FOR_SPRITE_B_FLIP_PENDING |
   MI_WAIT_FOR_SPRITE_C_FLIP_PENDING);
}
