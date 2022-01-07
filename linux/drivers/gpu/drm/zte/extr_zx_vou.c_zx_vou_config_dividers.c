
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx_vou_hw {int vouctl; } ;
struct zx_crtc_bits {int div_vga_shift; int div_pic_shift; int div_tvenc_shift; int div_hdmi_pnx_shift; int div_hdmi_shift; int div_inf_shift; int div_layer_shift; } ;
struct zx_crtc {struct zx_crtc_bits* bits; struct zx_vou_hw* vou; } ;
struct vou_div_config {int id; int val; } ;
struct drm_crtc {int dummy; } ;


 int DIV_PARA_UPDATE ;
 int VOU_CLK_SEL ;




 int VOU_DIV_PARA ;



 struct zx_crtc* to_zx_crtc (struct drm_crtc*) ;
 int zx_writel_mask (int,int,int) ;

void zx_vou_config_dividers(struct drm_crtc *crtc,
       struct vou_div_config *configs, int num)
{
 struct zx_crtc *zcrtc = to_zx_crtc(crtc);
 struct zx_vou_hw *vou = zcrtc->vou;
 const struct zx_crtc_bits *bits = zcrtc->bits;
 int i;


 zx_writel_mask(vou->vouctl + VOU_DIV_PARA, DIV_PARA_UPDATE, 0);

 for (i = 0; i < num; i++) {
  struct vou_div_config *cfg = configs + i;
  u32 reg, shift;

  switch (cfg->id) {
  case 128:
   reg = VOU_CLK_SEL;
   shift = bits->div_vga_shift;
   break;
  case 130:
   reg = VOU_CLK_SEL;
   shift = bits->div_pic_shift;
   break;
  case 129:
   reg = VOU_DIV_PARA;
   shift = bits->div_tvenc_shift;
   break;
  case 133:
   reg = VOU_DIV_PARA;
   shift = bits->div_hdmi_pnx_shift;
   break;
  case 134:
   reg = VOU_DIV_PARA;
   shift = bits->div_hdmi_shift;
   break;
  case 132:
   reg = VOU_DIV_PARA;
   shift = bits->div_inf_shift;
   break;
  case 131:
   reg = VOU_DIV_PARA;
   shift = bits->div_layer_shift;
   break;
  default:
   continue;
  }


  zx_writel_mask(vou->vouctl + reg, 0x7 << shift,
          cfg->val << shift);
 }


 zx_writel_mask(vou->vouctl + VOU_DIV_PARA, DIV_PARA_UPDATE,
         DIV_PARA_UPDATE);
}
