
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_vga_pwrctrl {int mask; int reg; int regmap; } ;
struct zx_vga {struct zx_vga_pwrctrl pwrctrl; } ;
struct drm_encoder {int crtc; } ;


 int VOU_VGA ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct zx_vga* to_zx_vga (struct drm_encoder*) ;
 int vou_inf_disable (int ,int ) ;

__attribute__((used)) static void zx_vga_encoder_disable(struct drm_encoder *encoder)
{
 struct zx_vga *vga = to_zx_vga(encoder);
 struct zx_vga_pwrctrl *pwrctrl = &vga->pwrctrl;

 vou_inf_disable(VOU_VGA, encoder->crtc);


 regmap_update_bits(pwrctrl->regmap, pwrctrl->reg, pwrctrl->mask, 0);
}
