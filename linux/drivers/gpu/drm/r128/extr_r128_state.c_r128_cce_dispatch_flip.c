
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_5__ {scalar_t__ current_page; TYPE_1__* sarea_priv; int front_offset; int back_offset; } ;
typedef TYPE_2__ drm_r128_private_t ;
struct TYPE_4__ {scalar_t__ pfCurrentPage; int last_frame; } ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CCE_PACKET0 (int ,int ) ;
 int DRM_DEBUG (char*,scalar_t__,scalar_t__) ;
 int OUT_RING (int ) ;
 int R128_CRTC_OFFSET ;
 int R128_LAST_FRAME_REG ;
 int R128_WAIT_UNTIL_PAGE_FLIPPED () ;
 int RING_LOCALS ;
 int r128_cce_performance_boxes (TYPE_2__*) ;

__attribute__((used)) static void r128_cce_dispatch_flip(struct drm_device *dev)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 RING_LOCALS;
 DRM_DEBUG("page=%d pfCurrentPage=%d\n",
    dev_priv->current_page, dev_priv->sarea_priv->pfCurrentPage);







 BEGIN_RING(4);

 R128_WAIT_UNTIL_PAGE_FLIPPED();
 OUT_RING(CCE_PACKET0(R128_CRTC_OFFSET, 0));

 if (dev_priv->current_page == 0)
  OUT_RING(dev_priv->back_offset);
 else
  OUT_RING(dev_priv->front_offset);

 ADVANCE_RING();





 dev_priv->sarea_priv->last_frame++;
 dev_priv->sarea_priv->pfCurrentPage = dev_priv->current_page =
     1 - dev_priv->current_page;

 BEGIN_RING(2);

 OUT_RING(CCE_PACKET0(R128_LAST_FRAME_REG, 0));
 OUT_RING(dev_priv->sarea_priv->last_frame);

 ADVANCE_RING();
}
