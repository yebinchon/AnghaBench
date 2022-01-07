
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 int HVS_READ (int ) ;
 int HVS_WRITE (int ,int ) ;
 int SCALER_DISPCTRL ;
 int SCALER_DISPCTRL_DSPEISLUR (int) ;
 int SCALER_DISPSTAT ;
 int SCALER_DISPSTAT_EUFLOW (int) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

void vc4_hvs_unmask_underrun(struct drm_device *dev, int channel)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 u32 dispctrl = HVS_READ(SCALER_DISPCTRL);

 dispctrl |= SCALER_DISPCTRL_DSPEISLUR(channel);

 HVS_WRITE(SCALER_DISPSTAT,
    SCALER_DISPSTAT_EUFLOW(channel));
 HVS_WRITE(SCALER_DISPCTRL, dispctrl);
}
