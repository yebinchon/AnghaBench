
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_data {int dev; } ;
struct g2d_buf_desc {scalar_t__ right_x; scalar_t__ stride; scalar_t__ bottom_y; int format; scalar_t__ top_y; scalar_t__ left_x; } ;
typedef enum g2d_reg_type { ____Placeholder_g2d_reg_type } g2d_reg_type ;


 int DRM_DEV_ERROR (int ,char*,unsigned long,...) ;
 int G2D_LEN_MAX ;
 int G2D_LEN_MIN ;
 int REG_TYPE_DST ;
 int REG_TYPE_SRC ;
 unsigned long g2d_get_buf_bpp (int ) ;

__attribute__((used)) static bool g2d_check_buf_desc_is_valid(struct g2d_data *g2d,
     struct g2d_buf_desc *buf_desc,
     enum g2d_reg_type reg_type,
     unsigned long size)
{
 int width, height;
 unsigned long bpp, last_pos;





 if (reg_type != REG_TYPE_SRC && reg_type != REG_TYPE_DST)
  return 1;


 width = (int)buf_desc->right_x - (int)buf_desc->left_x;
 if (width < G2D_LEN_MIN || width > G2D_LEN_MAX) {
  DRM_DEV_ERROR(g2d->dev, "width[%d] is out of range!\n", width);
  return 0;
 }


 height = (int)buf_desc->bottom_y - (int)buf_desc->top_y;
 if (height < G2D_LEN_MIN || height > G2D_LEN_MAX) {
  DRM_DEV_ERROR(g2d->dev,
         "height[%d] is out of range!\n", height);
  return 0;
 }

 bpp = g2d_get_buf_bpp(buf_desc->format);


 last_pos = ((unsigned long)buf_desc->bottom_y - 1) *
  (unsigned long)buf_desc->stride +
  (unsigned long)buf_desc->right_x * bpp - 1;
 if (last_pos >= size) {
  DRM_DEV_ERROR(g2d->dev, "last engine access position [%lu] "
         "is out of range [%lu]!\n", last_pos, size);
  return 0;
 }

 return 1;
}
