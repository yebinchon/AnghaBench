
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct malidp_plane {TYPE_2__* layer; int hwdev; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_framebuffer {int modifier; int width; int height; } ;
struct TYPE_4__ {scalar_t__ afbc_decoder_offset; } ;
struct TYPE_3__ {int src_w; int src_h; int src_x; int src_y; struct drm_framebuffer* fb; } ;


 int AFBC_FORMAT_MOD_SPLIT ;
 int AFBC_FORMAT_MOD_YTR ;
 int MALIDP_AD_BS ;
 int MALIDP_AD_CROP_BOTTOM_OFFSET ;
 scalar_t__ MALIDP_AD_CROP_H ;
 int MALIDP_AD_CROP_RIGHT_OFFSET ;
 scalar_t__ MALIDP_AD_CROP_V ;
 int MALIDP_AD_EN ;
 int MALIDP_AD_YTR ;
 int malidp_hw_write (int ,int,scalar_t__) ;
 struct malidp_plane* to_malidp_plane (struct drm_plane*) ;

__attribute__((used)) static void malidp_de_set_plane_afbc(struct drm_plane *plane)
{
 struct malidp_plane *mp;
 u32 src_w, src_h, val = 0, src_x, src_y;
 struct drm_framebuffer *fb = plane->state->fb;

 mp = to_malidp_plane(plane);


 if (!mp->layer->afbc_decoder_offset)
  return;

 if (!fb->modifier) {
  malidp_hw_write(mp->hwdev, 0, mp->layer->afbc_decoder_offset);
  return;
 }


 src_w = plane->state->src_w >> 16;
 src_h = plane->state->src_h >> 16;
 src_x = plane->state->src_x >> 16;
 src_y = plane->state->src_y >> 16;

 val = ((fb->width - (src_x + src_w)) << MALIDP_AD_CROP_RIGHT_OFFSET) |
     src_x;
 malidp_hw_write(mp->hwdev, val,
   mp->layer->afbc_decoder_offset + MALIDP_AD_CROP_H);

 val = ((fb->height - (src_y + src_h)) << MALIDP_AD_CROP_BOTTOM_OFFSET) |
     src_y;
 malidp_hw_write(mp->hwdev, val,
   mp->layer->afbc_decoder_offset + MALIDP_AD_CROP_V);

 val = MALIDP_AD_EN;
 if (fb->modifier & AFBC_FORMAT_MOD_SPLIT)
  val |= MALIDP_AD_BS;
 if (fb->modifier & AFBC_FORMAT_MOD_YTR)
  val |= MALIDP_AD_YTR;

 malidp_hw_write(mp->hwdev, val, mp->layer->afbc_decoder_offset);
}
