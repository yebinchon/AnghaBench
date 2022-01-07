
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rot_context {int dummy; } ;


 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_REFLECT_Y ;
 unsigned int DRM_MODE_ROTATE_180 ;
 unsigned int DRM_MODE_ROTATE_270 ;
 unsigned int DRM_MODE_ROTATE_90 ;
 int ROT_CONTROL ;
 int ROT_CONTROL_FLIP_HORIZONTAL ;
 int ROT_CONTROL_FLIP_MASK ;
 int ROT_CONTROL_FLIP_VERTICAL ;
 int ROT_CONTROL_ROT_180 ;
 int ROT_CONTROL_ROT_270 ;
 int ROT_CONTROL_ROT_90 ;
 int ROT_CONTROL_ROT_MASK ;
 int rot_read (int ) ;
 int rot_write (int ,int ) ;

__attribute__((used)) static void rotator_dst_set_transf(struct rot_context *rot,
       unsigned int rotation)
{
 u32 val;


 val = rot_read(ROT_CONTROL);
 val &= ~ROT_CONTROL_FLIP_MASK;

 if (rotation & DRM_MODE_REFLECT_X)
  val |= ROT_CONTROL_FLIP_VERTICAL;
 if (rotation & DRM_MODE_REFLECT_Y)
  val |= ROT_CONTROL_FLIP_HORIZONTAL;

 val &= ~ROT_CONTROL_ROT_MASK;

 if (rotation & DRM_MODE_ROTATE_90)
  val |= ROT_CONTROL_ROT_90;
 else if (rotation & DRM_MODE_ROTATE_180)
  val |= ROT_CONTROL_ROT_180;
 else if (rotation & DRM_MODE_ROTATE_270)
  val |= ROT_CONTROL_ROT_270;

 rot_write(val, ROT_CONTROL);
}
