
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int regs; } ;
struct sun8i_mixer {TYPE_2__ engine; TYPE_1__* cfg; } ;
typedef enum sun8i_csc_mode { ____Placeholder_sun8i_csc_mode } sun8i_csc_mode ;
typedef enum drm_color_range { ____Placeholder_drm_color_range } drm_color_range ;
typedef enum drm_color_encoding { ____Placeholder_drm_color_encoding } drm_color_encoding ;
struct TYPE_3__ {size_t ccsc; scalar_t__ is_de3; } ;


 int ** ccsc_base ;
 int sun8i_csc_set_coefficients (int ,int ,int,int,int) ;
 int sun8i_de3_ccsc_set_coefficients (int ,int,int,int,int) ;

void sun8i_csc_set_ccsc_coefficients(struct sun8i_mixer *mixer, int layer,
         enum sun8i_csc_mode mode,
         enum drm_color_encoding encoding,
         enum drm_color_range range)
{
 u32 base;

 if (mixer->cfg->is_de3) {
  sun8i_de3_ccsc_set_coefficients(mixer->engine.regs, layer,
      mode, encoding, range);
  return;
 }

 base = ccsc_base[mixer->cfg->ccsc][layer];

 sun8i_csc_set_coefficients(mixer->engine.regs, base,
       mode, encoding, range);
}
