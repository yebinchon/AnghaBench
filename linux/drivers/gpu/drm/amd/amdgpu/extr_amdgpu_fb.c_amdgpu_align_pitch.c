
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;



int amdgpu_align_pitch(struct amdgpu_device *adev, int width, int cpp, bool tiled)
{
 int aligned = width;
 int pitch_mask = 0;

 switch (cpp) {
 case 1:
  pitch_mask = 255;
  break;
 case 2:
  pitch_mask = 127;
  break;
 case 3:
 case 4:
  pitch_mask = 63;
  break;
 }

 aligned += pitch_mask;
 aligned &= ~pitch_mask;
 return aligned * cpp;
}
