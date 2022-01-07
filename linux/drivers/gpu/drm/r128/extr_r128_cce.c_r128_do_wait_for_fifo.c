
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int usec_timeout; } ;
typedef TYPE_1__ drm_r128_private_t ;


 int DRM_ERROR (char*) ;
 int EBUSY ;
 int R128_GUI_FIFOCNT_MASK ;
 int R128_GUI_STAT ;
 int R128_READ (int ) ;
 int udelay (int) ;

__attribute__((used)) static int r128_do_wait_for_fifo(drm_r128_private_t *dev_priv, int entries)
{
 int i;

 for (i = 0; i < dev_priv->usec_timeout; i++) {
  int slots = R128_READ(R128_GUI_STAT) & R128_GUI_FIFOCNT_MASK;
  if (slots >= entries)
   return 0;
  udelay(1);
 }




 return -EBUSY;
}
