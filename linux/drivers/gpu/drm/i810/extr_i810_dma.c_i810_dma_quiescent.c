
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_3__ {scalar_t__ Size; } ;
struct TYPE_4__ {TYPE_1__ ring; } ;
typedef TYPE_2__ drm_i810_private_t ;


 int ADVANCE_LP_RING () ;
 int BEGIN_LP_RING (int) ;
 int CMD_REPORT_HEAD ;
 int INST_FLUSH_MAP_CACHE ;
 int INST_OP_FLUSH ;
 int INST_PARSER_CLIENT ;
 int OUT_RING (int) ;
 int RING_LOCALS ;
 int i810_kernel_lost_context (struct drm_device*) ;
 int i810_wait_ring (struct drm_device*,scalar_t__) ;

__attribute__((used)) static void i810_dma_quiescent(struct drm_device *dev)
{
 drm_i810_private_t *dev_priv = dev->dev_private;
 RING_LOCALS;

 i810_kernel_lost_context(dev);

 BEGIN_LP_RING(4);
 OUT_RING(INST_PARSER_CLIENT | INST_OP_FLUSH | INST_FLUSH_MAP_CACHE);
 OUT_RING(CMD_REPORT_HEAD);
 OUT_RING(0);
 OUT_RING(0);
 ADVANCE_LP_RING();

 i810_wait_ring(dev, dev_priv->ring.Size - 8);
}
