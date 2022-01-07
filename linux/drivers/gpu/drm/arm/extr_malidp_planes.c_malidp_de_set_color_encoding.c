
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct malidp_plane {TYPE_1__* layer; int hwdev; } ;
typedef enum drm_color_range { ____Placeholder_drm_color_range } drm_color_range ;
typedef enum drm_color_encoding { ____Placeholder_drm_color_encoding } drm_color_encoding ;
struct TYPE_2__ {scalar_t__ yuv2rgb_offset; scalar_t__ base; } ;


 unsigned int MALIDP_COLORADJ_NUM_COEFFS ;
 int malidp_hw_write (int ,int ,scalar_t__) ;
 int *** malidp_yuv2rgb_coeffs ;

__attribute__((used)) static void malidp_de_set_color_encoding(struct malidp_plane *plane,
      enum drm_color_encoding enc,
      enum drm_color_range range)
{
 unsigned int i;

 for (i = 0; i < MALIDP_COLORADJ_NUM_COEFFS; i++) {

  malidp_hw_write(plane->hwdev, malidp_yuv2rgb_coeffs[enc][range][i],
    plane->layer->base + plane->layer->yuv2rgb_offset +
    i * 4);
 }
}
