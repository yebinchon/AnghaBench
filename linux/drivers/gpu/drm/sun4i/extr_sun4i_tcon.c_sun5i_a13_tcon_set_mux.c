
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_tcon {int regs; } ;
struct drm_encoder {scalar_t__ encoder_type; } ;


 scalar_t__ DRM_MODE_ENCODER_TVDAC ;
 int SUN4I_TCON_MUX_CTRL_REG ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int sun5i_a13_tcon_set_mux(struct sun4i_tcon *tcon,
      const struct drm_encoder *encoder)
{
 u32 val;

 if (encoder->encoder_type == DRM_MODE_ENCODER_TVDAC)
  val = 1;
 else
  val = 0;




 return regmap_write(tcon->regs, SUN4I_TCON_MUX_CTRL_REG, val);
}
