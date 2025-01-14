
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv04_crtc_reg {int* CRTC; scalar_t__ tv_setup; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {struct nv04_crtc_reg* crtc_reg; } ;
struct TYPE_4__ {TYPE_1__ mode_reg; } ;


 int NVWriteRAMDAC (struct drm_device*,int,int ,scalar_t__) ;
 int NVWriteVgaCrtc (struct drm_device*,int,size_t,int) ;
 size_t NV_CIO_CRE_49 ;
 size_t NV_CIO_CRE_LCD__INDEX ;
 int NV_PRAMDAC_TV_SETUP ;
 TYPE_2__* nv04_display (struct drm_device*) ;

__attribute__((used)) static void nv04_tv_bind(struct drm_device *dev, int head, bool bind)
{
 struct nv04_crtc_reg *state = &nv04_display(dev)->mode_reg.crtc_reg[head];

 state->tv_setup = 0;

 if (bind)
  state->CRTC[NV_CIO_CRE_49] |= 0x10;
 else
  state->CRTC[NV_CIO_CRE_49] &= ~0x10;

 NVWriteVgaCrtc(dev, head, NV_CIO_CRE_LCD__INDEX,
         state->CRTC[NV_CIO_CRE_LCD__INDEX]);
 NVWriteVgaCrtc(dev, head, NV_CIO_CRE_49,
         state->CRTC[NV_CIO_CRE_49]);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_TV_SETUP,
        state->tv_setup);
}
