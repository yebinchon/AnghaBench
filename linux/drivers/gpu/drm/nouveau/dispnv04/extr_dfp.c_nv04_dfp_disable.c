
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv04_crtc_reg {int * CRTC; int fp_control; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {struct nv04_crtc_reg* crtc_reg; } ;
struct TYPE_4__ {TYPE_1__ mode_reg; } ;


 int FP_TG_CONTROL_OFF ;
 int FP_TG_CONTROL_ON ;
 int NVReadRAMDAC (struct drm_device*,int,int ) ;
 int NVWriteRAMDAC (struct drm_device*,int,int ,int ) ;
 int NV_CIO_CRE_LCD_ROUTE_MASK ;
 size_t NV_CIO_CRE_LCD__INDEX ;
 int NV_PRAMDAC_FP_TG_CONTROL ;
 int msleep (int) ;
 TYPE_2__* nv04_display (struct drm_device*) ;

void nv04_dfp_disable(struct drm_device *dev, int head)
{
 struct nv04_crtc_reg *crtcstate = nv04_display(dev)->mode_reg.crtc_reg;

 if (NVReadRAMDAC(dev, head, NV_PRAMDAC_FP_TG_CONTROL) &
     FP_TG_CONTROL_ON) {




  NVWriteRAMDAC(dev, head, NV_PRAMDAC_FP_TG_CONTROL,
         FP_TG_CONTROL_OFF);
  msleep(50);
 }

 crtcstate[head].fp_control = FP_TG_CONTROL_OFF;
 crtcstate[head].CRTC[NV_CIO_CRE_LCD__INDEX] &=
  ~NV_CIO_CRE_LCD_ROUTE_MASK;
}
