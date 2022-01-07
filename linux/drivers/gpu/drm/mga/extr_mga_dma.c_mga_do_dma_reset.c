
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ last_wrap; } ;
typedef TYPE_1__ drm_mga_sarea_t ;
struct TYPE_7__ {scalar_t__ last_flush; int size; int space; scalar_t__ tail; } ;
struct TYPE_6__ {TYPE_3__ prim; TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_mga_private_t ;
typedef TYPE_3__ drm_mga_primary_buffer_t ;


 int DRM_DEBUG (char*) ;

__attribute__((used)) static int mga_do_dma_reset(drm_mga_private_t *dev_priv)
{
 drm_mga_sarea_t *sarea_priv = dev_priv->sarea_priv;
 drm_mga_primary_buffer_t *primary = &dev_priv->prim;

 DRM_DEBUG("\n");



 primary->tail = 0;
 primary->space = primary->size;
 primary->last_flush = 0;

 sarea_priv->last_wrap = 0;







 return 0;
}
