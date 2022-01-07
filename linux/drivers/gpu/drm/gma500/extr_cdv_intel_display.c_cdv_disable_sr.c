
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int FW_BLC_SELF ;
 int FW_BLC_SELF_EN ;
 int OV_OVADD ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int gma_wait_for_vblank (struct drm_device*) ;

void cdv_disable_sr(struct drm_device *dev)
{
 if (REG_READ(FW_BLC_SELF) & FW_BLC_SELF_EN) {


  REG_WRITE(FW_BLC_SELF, (REG_READ(FW_BLC_SELF) & ~FW_BLC_SELF_EN));
  REG_READ(FW_BLC_SELF);

  gma_wait_for_vblank(dev);




  REG_WRITE(OV_OVADD, 0 );
  REG_READ(OV_OVADD);

  gma_wait_for_vblank(dev);
 }

}
