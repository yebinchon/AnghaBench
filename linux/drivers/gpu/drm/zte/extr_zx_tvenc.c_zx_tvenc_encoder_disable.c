
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tvenc_pwrctrl {int mask; int reg; int regmap; } ;
struct zx_tvenc {scalar_t__ mmio; struct zx_tvenc_pwrctrl pwrctrl; } ;
struct drm_encoder {int crtc; } ;


 scalar_t__ VENC_ENABLE ;
 int VOU_TV_ENC ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct zx_tvenc* to_zx_tvenc (struct drm_encoder*) ;
 int vou_inf_disable (int ,int ) ;
 int zx_writel (scalar_t__,int ) ;

__attribute__((used)) static void zx_tvenc_encoder_disable(struct drm_encoder *encoder)
{
 struct zx_tvenc *tvenc = to_zx_tvenc(encoder);
 struct zx_tvenc_pwrctrl *pwrctrl = &tvenc->pwrctrl;

 zx_writel(tvenc->mmio + VENC_ENABLE, 0);

 vou_inf_disable(VOU_TV_ENC, encoder->crtc);


 regmap_update_bits(pwrctrl->regmap, pwrctrl->reg, pwrctrl->mask, 0);
}
