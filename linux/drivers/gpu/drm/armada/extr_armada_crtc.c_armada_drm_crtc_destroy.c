
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_crtc {TYPE_3__* dev; } ;
struct armada_private {int ** dcrtc; } ;
struct TYPE_8__ {int port; } ;
struct armada_crtc {size_t num; TYPE_4__ crtc; scalar_t__ base; TYPE_2__* variant; TYPE_1__* cursor_obj; } ;
struct TYPE_7__ {struct armada_private* dev_private; } ;
struct TYPE_6__ {int (* disable ) (struct armada_crtc*) ;} ;
struct TYPE_5__ {int obj; } ;


 scalar_t__ LCD_SPU_IRQ_ENA ;
 int drm_crtc_cleanup (TYPE_4__*) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct armada_crtc* drm_to_armada_crtc (struct drm_crtc*) ;
 int kfree (struct armada_crtc*) ;
 int of_node_put (int ) ;
 int stub1 (struct armada_crtc*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void armada_drm_crtc_destroy(struct drm_crtc *crtc)
{
 struct armada_crtc *dcrtc = drm_to_armada_crtc(crtc);
 struct armada_private *priv = crtc->dev->dev_private;

 if (dcrtc->cursor_obj)
  drm_gem_object_put_unlocked(&dcrtc->cursor_obj->obj);

 priv->dcrtc[dcrtc->num] = ((void*)0);
 drm_crtc_cleanup(&dcrtc->crtc);

 if (dcrtc->variant->disable)
  dcrtc->variant->disable(dcrtc);

 writel_relaxed(0, dcrtc->base + LCD_SPU_IRQ_ENA);

 of_node_put(dcrtc->crtc.port);

 kfree(dcrtc);
}
