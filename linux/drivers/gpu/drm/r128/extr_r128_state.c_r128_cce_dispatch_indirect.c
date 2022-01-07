
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_1__* agp_buffer_map; TYPE_3__* dev_private; } ;
struct drm_buf {int bus_address; int offset; int pending; scalar_t__ used; int idx; TYPE_4__* dev_private; } ;
struct TYPE_7__ {TYPE_2__* sarea_priv; } ;
typedef TYPE_3__ drm_r128_private_t ;
struct TYPE_8__ {int dispatched; int age; scalar_t__ discard; } ;
typedef TYPE_4__ drm_r128_buf_priv_t ;
struct TYPE_6__ {int last_dispatch; } ;
struct TYPE_5__ {scalar_t__ handle; } ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CCE_PACKET0 (int ,int) ;
 int DRM_DEBUG (char*,int ,int,int) ;
 int OUT_RING (int) ;
 int R128_CCE_PACKET2 ;
 int R128_LAST_DISPATCH_REG ;
 int R128_PM4_IW_INDOFF ;
 int RING_LOCALS ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void r128_cce_dispatch_indirect(struct drm_device *dev,
           struct drm_buf *buf, int start, int end)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 drm_r128_buf_priv_t *buf_priv = buf->dev_private;
 RING_LOCALS;
 DRM_DEBUG("indirect: buf=%d s=0x%x e=0x%x\n", buf->idx, start, end);

 if (start != end) {
  int offset = buf->bus_address + start;
  int dwords = (end - start + 3) / sizeof(u32);





  if (dwords & 1) {
   u32 *data = (u32 *)
       ((char *)dev->agp_buffer_map->handle
        + buf->offset + start);
   data[dwords++] = cpu_to_le32(R128_CCE_PACKET2);
  }

  buf_priv->dispatched = 1;


  BEGIN_RING(3);

  OUT_RING(CCE_PACKET0(R128_PM4_IW_INDOFF, 1));
  OUT_RING(offset);
  OUT_RING(dwords);

  ADVANCE_RING();
 }

 if (buf_priv->discard) {
  buf_priv->age = dev_priv->sarea_priv->last_dispatch;


  BEGIN_RING(2);

  OUT_RING(CCE_PACKET0(R128_LAST_DISPATCH_REG, 0));
  OUT_RING(buf_priv->age);

  ADVANCE_RING();

  buf->pending = 1;
  buf->used = 0;

  buf_priv->dispatched = 0;
 }

 dev_priv->sarea_priv->last_dispatch++;
}
