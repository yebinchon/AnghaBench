
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bus_width; int hw_version; int non_alpha_only_l1; int pad_max_freq_hz; int pix_fmt_hw; int reg_ofs; int nb_layers; } ;
struct ltdc_device {TYPE_1__ caps; int regs; } ;
struct drm_device {struct ltdc_device* dev_private; } ;


 int ENODEV ;
 int GC2R_BW ;



 int LTDC_GC2R ;
 int LTDC_IDR ;
 int LTDC_LCR ;
 int LTDC_MAX_LAYER ;
 int REG_OFS_4 ;
 int REG_OFS_NONE ;
 int clamp (int,int,int ) ;
 int ltdc_pix_fmt_a0 ;
 int ltdc_pix_fmt_a1 ;
 void* reg_read (int ,int ) ;

__attribute__((used)) static int ltdc_get_caps(struct drm_device *ddev)
{
 struct ltdc_device *ldev = ddev->dev_private;
 u32 bus_width_log2, lcr, gc2r;





 lcr = reg_read(ldev->regs, LTDC_LCR);

 ldev->caps.nb_layers = clamp((int)lcr, 1, LTDC_MAX_LAYER);


 gc2r = reg_read(ldev->regs, LTDC_GC2R);
 bus_width_log2 = (gc2r & GC2R_BW) >> 4;
 ldev->caps.bus_width = 8 << bus_width_log2;
 ldev->caps.hw_version = reg_read(ldev->regs, LTDC_IDR);

 switch (ldev->caps.hw_version) {
 case 130:
 case 129:
  ldev->caps.reg_ofs = REG_OFS_NONE;
  ldev->caps.pix_fmt_hw = ltdc_pix_fmt_a0;







  ldev->caps.non_alpha_only_l1 = 1;
  ldev->caps.pad_max_freq_hz = 90000000;
  if (ldev->caps.hw_version == 130)
   ldev->caps.pad_max_freq_hz = 65000000;
  break;
 case 128:
  ldev->caps.reg_ofs = REG_OFS_4;
  ldev->caps.pix_fmt_hw = ltdc_pix_fmt_a1;
  ldev->caps.non_alpha_only_l1 = 0;
  ldev->caps.pad_max_freq_hz = 150000000;
  break;
 default:
  return -ENODEV;
 }

 return 0;
}
