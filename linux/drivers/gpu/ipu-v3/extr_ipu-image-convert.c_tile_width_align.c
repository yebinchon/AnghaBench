
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_image_pixfmt {int uv_width_dec; int uv_packed; scalar_t__ planar; } ;
typedef enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;
typedef enum ipu_image_convert_type { ____Placeholder_ipu_image_convert_type } ipu_image_convert_type ;


 int IMAGE_CONVERT_IN ;
 int IPU_ROT_BIT_HFLIP ;
 scalar_t__ ipu_rot_mode_is_irt (int) ;

__attribute__((used)) static inline u32 tile_width_align(enum ipu_image_convert_type type,
       const struct ipu_image_pixfmt *fmt,
       enum ipu_rotate_mode rot_mode)
{
 if (type == IMAGE_CONVERT_IN) {






  return (!ipu_rot_mode_is_irt(rot_mode) &&
   (rot_mode & IPU_ROT_BIT_HFLIP)) ? 8 : 2;
 }







 return (ipu_rot_mode_is_irt(rot_mode) &&
  fmt->planar && !fmt->uv_packed) ?
  8 * fmt->uv_width_dec : 8;
}
