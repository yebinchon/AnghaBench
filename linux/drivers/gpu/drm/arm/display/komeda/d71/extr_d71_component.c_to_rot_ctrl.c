
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DRM_MODE_REFLECT_X ;
 int DRM_MODE_REFLECT_Y ;




 int DRM_MODE_ROTATE_MASK ;
 int L_HFLIP ;
 int L_ROT (int ) ;
 int L_ROT_R0 ;
 int L_ROT_R180 ;
 int L_ROT_R270 ;
 int L_ROT_R90 ;
 int L_VFLIP ;

__attribute__((used)) static u32 to_rot_ctrl(u32 rot)
{
 u32 lr_ctrl = 0;

 switch (rot & DRM_MODE_ROTATE_MASK) {
 case 131:
  lr_ctrl |= L_ROT(L_ROT_R0);
  break;
 case 128:
  lr_ctrl |= L_ROT(L_ROT_R90);
  break;
 case 130:
  lr_ctrl |= L_ROT(L_ROT_R180);
  break;
 case 129:
  lr_ctrl |= L_ROT(L_ROT_R270);
  break;
 }

 if (rot & DRM_MODE_REFLECT_X)
  lr_ctrl |= L_HFLIP;
 if (rot & DRM_MODE_REFLECT_Y)
  lr_ctrl |= L_VFLIP;

 return lr_ctrl;
}
