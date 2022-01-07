
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;


 int EINVAL ;





int ipu_rot_mode_to_degrees(int *degrees, enum ipu_rotate_mode mode,
       bool hflip, bool vflip)
{
 u32 r90, vf, hf;

 r90 = ((u32)mode >> 2) & 0x1;
 hf = ((u32)mode >> 1) & 0x1;
 vf = ((u32)mode >> 0) & 0x1;
 hf ^= (u32)hflip;
 vf ^= (u32)vflip;

 switch ((enum ipu_rotate_mode)((r90 << 2) | (hf << 1) | vf)) {
 case 128:
  *degrees = 0;
  break;
 case 129:
  *degrees = 90;
  break;
 case 131:
  *degrees = 180;
  break;
 case 130:
  *degrees = 270;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
