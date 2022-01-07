
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int I915_OVERLAY_DEPTH_MASK ;





__attribute__((used)) static int uv_vsubsampling(u32 format)
{
 switch (format & I915_OVERLAY_DEPTH_MASK) {
 case 129:
 case 131:
  return 2;
 case 128:
 case 130:
  return 1;
 default:
  return -EINVAL;
 }
}
