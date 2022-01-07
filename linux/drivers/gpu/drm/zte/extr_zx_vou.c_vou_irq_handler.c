
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct zx_vou_hw {int dev; TYPE_1__* aux_crtc; TYPE_1__* main_crtc; scalar_t__ osd; scalar_t__ timing; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int crtc; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int IRQ_HANDLED ;
 int OSD_INT_AUX_UPT ;
 scalar_t__ OSD_INT_CLRSTA ;
 int OSD_INT_ERROR ;
 int OSD_INT_MAIN_UPT ;
 scalar_t__ OSD_INT_STA ;
 int TIMING_INT_AUX_FRAME ;
 int TIMING_INT_MAIN_FRAME ;
 scalar_t__ TIMING_INT_STATE ;
 int drm_crtc_handle_vblank (int *) ;
 int zx_osd_int_update (TYPE_1__*) ;
 int zx_readl (scalar_t__) ;
 int zx_writel (scalar_t__,int) ;

__attribute__((used)) static irqreturn_t vou_irq_handler(int irq, void *dev_id)
{
 struct zx_vou_hw *vou = dev_id;
 u32 state;


 state = zx_readl(vou->timing + TIMING_INT_STATE);
 zx_writel(vou->timing + TIMING_INT_STATE, state);

 if (state & TIMING_INT_MAIN_FRAME)
  drm_crtc_handle_vblank(&vou->main_crtc->crtc);

 if (state & TIMING_INT_AUX_FRAME)
  drm_crtc_handle_vblank(&vou->aux_crtc->crtc);


 state = zx_readl(vou->osd + OSD_INT_STA);
 zx_writel(vou->osd + OSD_INT_CLRSTA, state);

 if (state & OSD_INT_MAIN_UPT)
  zx_osd_int_update(vou->main_crtc);

 if (state & OSD_INT_AUX_UPT)
  zx_osd_int_update(vou->aux_crtc);

 if (state & OSD_INT_ERROR)
  DRM_DEV_ERROR(vou->dev, "OSD ERROR: 0x%08x!\n", state);

 return IRQ_HANDLED;
}
