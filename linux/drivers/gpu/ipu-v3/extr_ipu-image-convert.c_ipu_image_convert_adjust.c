
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipu_image_pixfmt {int bpp; scalar_t__ planar; } ;
struct TYPE_2__ {void* pixelformat; int height; int width; int bytesperline; int sizeimage; int field; } ;
struct ipu_image {TYPE_1__ pix; } ;
typedef enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;


 int IMAGE_CONVERT_IN ;
 int IMAGE_CONVERT_OUT ;
 int MAX_H ;
 int MAX_W ;
 int MIN_H ;
 int MIN_W ;
 int V4L2_FIELD_NONE ;
 void* V4L2_PIX_FMT_RGB24 ;
 int __u32 ;
 void* clamp_align (int,int,int,int) ;
 struct ipu_image_pixfmt* get_format (void*) ;
 int ilog2 (int ) ;
 scalar_t__ ipu_rot_mode_is_irt (int) ;
 void* max_t (int ,int,int) ;
 int tile_height_align (int ,struct ipu_image_pixfmt const*,int) ;
 int tile_width_align (int ,struct ipu_image_pixfmt const*,int) ;

void ipu_image_convert_adjust(struct ipu_image *in, struct ipu_image *out,
         enum ipu_rotate_mode rot_mode)
{
 const struct ipu_image_pixfmt *infmt, *outfmt;
 u32 w_align_out, h_align_out;
 u32 w_align_in, h_align_in;

 infmt = get_format(in->pix.pixelformat);
 outfmt = get_format(out->pix.pixelformat);


 if (!infmt) {
  in->pix.pixelformat = V4L2_PIX_FMT_RGB24;
  infmt = get_format(V4L2_PIX_FMT_RGB24);
 }
 if (!outfmt) {
  out->pix.pixelformat = V4L2_PIX_FMT_RGB24;
  outfmt = get_format(V4L2_PIX_FMT_RGB24);
 }


 in->pix.field = out->pix.field = V4L2_FIELD_NONE;


 if (ipu_rot_mode_is_irt(rot_mode)) {
  out->pix.height = max_t(__u32, out->pix.height,
     in->pix.width / 4);
  out->pix.width = max_t(__u32, out->pix.width,
           in->pix.height / 4);
 } else {
  out->pix.width = max_t(__u32, out->pix.width,
           in->pix.width / 4);
  out->pix.height = max_t(__u32, out->pix.height,
     in->pix.height / 4);
 }


 w_align_in = ilog2(tile_width_align(IMAGE_CONVERT_IN, infmt,
         rot_mode));
 h_align_in = ilog2(tile_height_align(IMAGE_CONVERT_IN, infmt,
          rot_mode));
 in->pix.width = clamp_align(in->pix.width, MIN_W, MAX_W,
        w_align_in);
 in->pix.height = clamp_align(in->pix.height, MIN_H, MAX_H,
         h_align_in);


 w_align_out = ilog2(tile_width_align(IMAGE_CONVERT_OUT, outfmt,
          rot_mode));
 h_align_out = ilog2(tile_height_align(IMAGE_CONVERT_OUT, outfmt,
           rot_mode));
 out->pix.width = clamp_align(out->pix.width, MIN_W, MAX_W,
         w_align_out);
 out->pix.height = clamp_align(out->pix.height, MIN_H, MAX_H,
          h_align_out);


 in->pix.bytesperline = infmt->planar ?
  clamp_align(in->pix.width, 2 << w_align_in, MAX_W,
       w_align_in) :
  clamp_align((in->pix.width * infmt->bpp) >> 3,
       ((2 << w_align_in) * infmt->bpp) >> 3,
       (MAX_W * infmt->bpp) >> 3,
       w_align_in);
 in->pix.sizeimage = infmt->planar ?
  (in->pix.height * in->pix.bytesperline * infmt->bpp) >> 3 :
  in->pix.height * in->pix.bytesperline;
 out->pix.bytesperline = outfmt->planar ? out->pix.width :
  (out->pix.width * outfmt->bpp) >> 3;
 out->pix.sizeimage = outfmt->planar ?
  (out->pix.height * out->pix.bytesperline * outfmt->bpp) >> 3 :
  out->pix.height * out->pix.bytesperline;
}
