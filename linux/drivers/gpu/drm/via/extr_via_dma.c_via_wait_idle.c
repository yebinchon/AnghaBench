
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drm_via_private_t ;


 int VIA_2D_ENG_BUSY ;
 int VIA_3D_ENG_BUSY ;
 int VIA_CMD_RGTR_BUSY ;
 int VIA_REG_STATUS ;
 int VIA_VR_QUEUE_BUSY ;
 int via_read (int *,int ) ;

__attribute__((used)) static int via_wait_idle(drm_via_private_t *dev_priv)
{
 int count = 10000000;

 while (!(via_read(dev_priv, VIA_REG_STATUS) & VIA_VR_QUEUE_BUSY) && --count)
  ;

 while (count && (via_read(dev_priv, VIA_REG_STATUS) &
      (VIA_CMD_RGTR_BUSY | VIA_2D_ENG_BUSY |
       VIA_3D_ENG_BUSY)))
  --count;
 return count;
}
