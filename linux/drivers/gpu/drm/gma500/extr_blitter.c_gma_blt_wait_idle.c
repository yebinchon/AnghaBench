
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int dev; } ;


 int EBUSY ;
 unsigned long HZ ;
 scalar_t__ IS_CDV (int ) ;
 int PSB_CR_2D_BLIT_STATUS ;
 int PSB_CR_2D_SOCIF ;
 int PSB_RSGX32 (int ) ;
 int _PSB_C2B_STATUS_BUSY ;
 int _PSB_C2_SOCIF_EMPTY ;
 unsigned long jiffies ;
 int time_after_eq (unsigned long,unsigned long) ;

int gma_blt_wait_idle(struct drm_psb_private *dev_priv)
{
 unsigned long stop = jiffies + HZ;
 int busy = 1;


 if (IS_CDV(dev_priv->dev))
  return 0;


 if ((PSB_RSGX32(PSB_CR_2D_SOCIF) == _PSB_C2_SOCIF_EMPTY) &&
     ((PSB_RSGX32(PSB_CR_2D_BLIT_STATUS) & _PSB_C2B_STATUS_BUSY) == 0))
  return 0;

 do {
  busy = (PSB_RSGX32(PSB_CR_2D_SOCIF) != _PSB_C2_SOCIF_EMPTY);
 } while (busy && !time_after_eq(jiffies, stop));

 if (busy)
  return -EBUSY;

 do {
  busy = ((PSB_RSGX32(PSB_CR_2D_BLIT_STATUS) &
   _PSB_C2B_STATUS_BUSY) != 0);
 } while (busy && !time_after_eq(jiffies, stop));


 return (busy) ? -EBUSY : 0;
}
