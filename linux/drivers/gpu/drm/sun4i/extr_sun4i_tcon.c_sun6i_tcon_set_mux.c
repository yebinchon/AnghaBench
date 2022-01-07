
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_tcon {int id; int regs; } ;
struct drm_encoder {int encoder_type; int dev; } ;



 int EINVAL ;
 int SUN4I_TCON_MUX_CTRL_REG ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct sun4i_tcon* sun4i_get_tcon0 (int ) ;

__attribute__((used)) static int sun6i_tcon_set_mux(struct sun4i_tcon *tcon,
         const struct drm_encoder *encoder)
{
 struct sun4i_tcon *tcon0 = sun4i_get_tcon0(encoder->dev);
 u32 shift;

 if (!tcon0)
  return -EINVAL;

 switch (encoder->encoder_type) {
 case 128:

  shift = 8;
  break;
 default:

  return -EINVAL;
 }

 regmap_update_bits(tcon0->regs, SUN4I_TCON_MUX_CTRL_REG,
      0x3 << shift, tcon->id << shift);

 return 0;
}
