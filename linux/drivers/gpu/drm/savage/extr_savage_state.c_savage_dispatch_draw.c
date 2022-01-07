
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct drm_clip_rect {int dummy; } ;
struct drm_buf {int dummy; } ;
struct TYPE_19__ {int (* emit_clip_rect ) (TYPE_3__*,struct drm_clip_rect const*) ;} ;
typedef TYPE_3__ drm_savage_private_t ;
struct TYPE_18__ {int cmd; } ;
struct TYPE_17__ {int count; } ;
struct TYPE_20__ {TYPE_2__ cmd; TYPE_1__ idx; } ;
typedef TYPE_4__ drm_savage_cmd_header_t ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;




 int savage_dispatch_dma_idx (TYPE_3__*,TYPE_4__*,int const*,struct drm_buf const*) ;
 int savage_dispatch_dma_prim (TYPE_3__*,TYPE_4__*,struct drm_buf const*) ;
 int savage_dispatch_vb_idx (TYPE_3__*,TYPE_4__*,int const*,int const*,unsigned int,unsigned int) ;
 int savage_dispatch_vb_prim (TYPE_3__*,TYPE_4__*,unsigned int const*,unsigned int,unsigned int) ;
 int stub1 (TYPE_3__*,struct drm_clip_rect const*) ;

__attribute__((used)) static int savage_dispatch_draw(drm_savage_private_t * dev_priv,
    const drm_savage_cmd_header_t *start,
    const drm_savage_cmd_header_t *end,
    const struct drm_buf * dmabuf,
    const unsigned int *vtxbuf,
    unsigned int vb_size, unsigned int vb_stride,
    unsigned int nbox,
    const struct drm_clip_rect *boxes)
{
 unsigned int i, j;
 int ret;

 for (i = 0; i < nbox; ++i) {
  const drm_savage_cmd_header_t *cmdbuf;
  dev_priv->emit_clip_rect(dev_priv, &boxes[i]);

  cmdbuf = start;
  while (cmdbuf < end) {
   drm_savage_cmd_header_t cmd_header;
   cmd_header = *cmdbuf;
   cmdbuf++;
   switch (cmd_header.cmd.cmd) {
   case 130:
    ret = savage_dispatch_dma_prim(
     dev_priv, &cmd_header, dmabuf);
    break;
   case 128:
    ret = savage_dispatch_vb_prim(
     dev_priv, &cmd_header,
     vtxbuf, vb_size, vb_stride);
    break;
   case 131:
    j = (cmd_header.idx.count + 3) / 4;

    ret = savage_dispatch_dma_idx(dev_priv,
     &cmd_header, (const uint16_t *)cmdbuf,
     dmabuf);
    cmdbuf += j;
    break;
   case 129:
    j = (cmd_header.idx.count + 3) / 4;

    ret = savage_dispatch_vb_idx(dev_priv,
     &cmd_header, (const uint16_t *)cmdbuf,
     (const uint32_t *)vtxbuf, vb_size,
     vb_stride);
    cmdbuf += j;
    break;
   default:

    DRM_ERROR("IMPLEMENTATION ERROR: "
       "non-drawing-command %d\n",
       cmd_header.cmd.cmd);
    return -EINVAL;
   }

   if (ret != 0)
    return ret;
  }
 }

 return 0;
}
