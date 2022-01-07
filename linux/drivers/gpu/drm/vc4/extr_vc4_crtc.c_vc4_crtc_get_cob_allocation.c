
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vc4_dev {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct vc4_crtc {int cob_size; int channel; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;


 int HVS_READ (int ) ;
 int SCALER_DISPBASEX (int ) ;
 int SCALER_DISPBASEX_BASE ;
 int SCALER_DISPBASEX_TOP ;
 int VC4_GET_FIELD (int,int ) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void
vc4_crtc_get_cob_allocation(struct vc4_crtc *vc4_crtc)
{
 struct drm_device *drm = vc4_crtc->base.dev;
 struct vc4_dev *vc4 = to_vc4_dev(drm);
 u32 dispbase = HVS_READ(SCALER_DISPBASEX(vc4_crtc->channel));




 u32 top = VC4_GET_FIELD(dispbase, SCALER_DISPBASEX_TOP) & ~3;
 u32 base = VC4_GET_FIELD(dispbase, SCALER_DISPBASEX_BASE) & ~3;

 vc4_crtc->cob_size = top - base + 4;
}
