
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {int pitch; int current_page; int back_offset; int front_offset; TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_i810_private_t ;
struct TYPE_3__ {int pf_current_page; } ;


 int ADVANCE_LP_RING () ;
 int BEGIN_LP_RING (int) ;
 int CMD_OP_FRONTBUFFER_INFO ;
 int CMD_OP_WAIT_FOR_EVENT ;
 int DRM_DEBUG (char*,int,int) ;
 int I810_DEST_SETUP_SIZE ;
 int INST_FLUSH_MAP_CACHE ;
 int INST_OP_FLUSH ;
 int INST_PARSER_CLIENT ;
 int OUT_RING (int) ;
 int RING_LOCALS ;
 int WAIT_FOR_PLANE_A_FLIP ;
 int i810_kernel_lost_context (struct drm_device*) ;

__attribute__((used)) static void i810_dma_dispatch_flip(struct drm_device *dev)
{
 drm_i810_private_t *dev_priv = dev->dev_private;
 int pitch = dev_priv->pitch;
 RING_LOCALS;

 DRM_DEBUG("page=%d pfCurrentPage=%d\n",
    dev_priv->current_page,
    dev_priv->sarea_priv->pf_current_page);

 i810_kernel_lost_context(dev);

 BEGIN_LP_RING(2);
 OUT_RING(INST_PARSER_CLIENT | INST_OP_FLUSH | INST_FLUSH_MAP_CACHE);
 OUT_RING(0);
 ADVANCE_LP_RING();

 BEGIN_LP_RING(I810_DEST_SETUP_SIZE + 2);




 OUT_RING(CMD_OP_FRONTBUFFER_INFO | (pitch << 5) );
 if (dev_priv->current_page == 0) {
  OUT_RING(dev_priv->back_offset);
  dev_priv->current_page = 1;
 } else {
  OUT_RING(dev_priv->front_offset);
  dev_priv->current_page = 0;
 }
 OUT_RING(0);
 ADVANCE_LP_RING();

 BEGIN_LP_RING(2);
 OUT_RING(CMD_OP_WAIT_FOR_EVENT | WAIT_FOR_PLANE_A_FLIP);
 OUT_RING(0);
 ADVANCE_LP_RING();





 dev_priv->sarea_priv->pf_current_page = dev_priv->current_page;

}
