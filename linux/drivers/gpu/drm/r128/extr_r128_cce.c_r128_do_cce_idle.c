
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tail; } ;
struct TYPE_8__ {int usec_timeout; int cce_fifo_size; TYPE_1__ ring; } ;
typedef TYPE_2__ drm_r128_private_t ;


 int DRM_ERROR (char*) ;
 int EBUSY ;
 scalar_t__ GET_RING_HEAD (TYPE_2__*) ;
 int R128_PM4_BUSY ;
 int R128_PM4_FIFOCNT_MASK ;
 int R128_PM4_GUI_ACTIVE ;
 int R128_PM4_STAT ;
 int R128_READ (int ) ;
 int r128_do_pixcache_flush (TYPE_2__*) ;
 int r128_status (TYPE_2__*) ;
 int udelay (int) ;

int r128_do_cce_idle(drm_r128_private_t *dev_priv)
{
 int i;

 for (i = 0; i < dev_priv->usec_timeout; i++) {
  if (GET_RING_HEAD(dev_priv) == dev_priv->ring.tail) {
   int pm4stat = R128_READ(R128_PM4_STAT);
   if (((pm4stat & R128_PM4_FIFOCNT_MASK) >=
        dev_priv->cce_fifo_size) &&
       !(pm4stat & (R128_PM4_BUSY |
      R128_PM4_GUI_ACTIVE))) {
    return r128_do_pixcache_flush(dev_priv);
   }
  }
  udelay(1);
 }





 return -EBUSY;
}
