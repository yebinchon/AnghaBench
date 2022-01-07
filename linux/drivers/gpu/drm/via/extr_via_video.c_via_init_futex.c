
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sarea_priv; int * decoder_queue; } ;
typedef TYPE_1__ drm_via_private_t ;
struct TYPE_5__ {scalar_t__ lock; } ;


 int DRM_DEBUG (char*) ;
 unsigned int VIA_NR_XVMC_LOCKS ;
 TYPE_3__* XVMCLOCKPTR (int ,unsigned int) ;
 int init_waitqueue_head (int *) ;

void via_init_futex(drm_via_private_t *dev_priv)
{
 unsigned int i;

 DRM_DEBUG("\n");

 for (i = 0; i < VIA_NR_XVMC_LOCKS; ++i) {
  init_waitqueue_head(&(dev_priv->decoder_queue[i]));
  XVMCLOCKPTR(dev_priv->sarea_priv, i)->lock = 0;
 }
}
