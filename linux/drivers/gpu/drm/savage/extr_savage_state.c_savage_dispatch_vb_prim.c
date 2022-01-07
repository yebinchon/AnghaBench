
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int chipset; } ;
typedef TYPE_2__ drm_savage_private_t ;
struct TYPE_6__ {unsigned int prim; unsigned int skip; unsigned int count; unsigned int start; } ;
struct TYPE_8__ {TYPE_1__ prim; } ;
typedef TYPE_3__ drm_savage_cmd_header_t ;


 unsigned int BCI_CMD_DRAW_CONT ;
 int BEGIN_DMA (unsigned int) ;
 int DMA_COMMIT () ;
 int DMA_COPY (int const*,unsigned int) ;
 int DMA_DRAW_PRIMITIVE (unsigned int,unsigned int,unsigned int) ;
 int DMA_LOCALS ;
 int DRM_ERROR (char*,unsigned int,...) ;
 int EINVAL ;
 scalar_t__ S3_SAVAGE3D_SERIES (int ) ;




 unsigned int SAVAGE_SKIP_ALL_S3D ;
 unsigned int SAVAGE_SKIP_ALL_S4 ;

__attribute__((used)) static int savage_dispatch_vb_prim(drm_savage_private_t * dev_priv,
       const drm_savage_cmd_header_t * cmd_header,
       const uint32_t *vtxbuf, unsigned int vb_size,
       unsigned int vb_stride)
{
 unsigned char reorder = 0;
 unsigned int prim = cmd_header->prim.prim;
 unsigned int skip = cmd_header->prim.skip;
 unsigned int n = cmd_header->prim.count;
 unsigned int start = cmd_header->prim.start;
 unsigned int vtx_size;
 unsigned int i;
 DMA_LOCALS;

 if (!n)
  return 0;

 switch (prim) {
 case 129:
  reorder = 1;
  prim = 130;

 case 130:
  if (n % 3 != 0) {
   DRM_ERROR("wrong number of vertices %u in TRILIST\n",
      n);
   return -EINVAL;
  }
  break;
 case 128:
 case 131:
  if (n < 3) {
   DRM_ERROR
       ("wrong number of vertices %u in TRIFAN/STRIP\n",
        n);
   return -EINVAL;
  }
  break;
 default:
  DRM_ERROR("invalid primitive type %u\n", prim);
  return -EINVAL;
 }

 if (S3_SAVAGE3D_SERIES(dev_priv->chipset)) {
  if (skip > SAVAGE_SKIP_ALL_S3D) {
   DRM_ERROR("invalid skip flags 0x%04x\n", skip);
   return -EINVAL;
  }
  vtx_size = 8;
 } else {
  if (skip > SAVAGE_SKIP_ALL_S4) {
   DRM_ERROR("invalid skip flags 0x%04x\n", skip);
   return -EINVAL;
  }
  vtx_size = 10;
 }

 vtx_size -= (skip & 1) + (skip >> 1 & 1) +
     (skip >> 2 & 1) + (skip >> 3 & 1) + (skip >> 4 & 1) +
     (skip >> 5 & 1) + (skip >> 6 & 1) + (skip >> 7 & 1);

 if (vtx_size > vb_stride) {
  DRM_ERROR("vertex size greater than vb stride (%u > %u)\n",
     vtx_size, vb_stride);
  return -EINVAL;
 }

 if (start + n > vb_size / (vb_stride * 4)) {
  DRM_ERROR("vertex indices (%u-%u) out of range (0-%u)\n",
     start, start + n - 1, vb_size / (vb_stride * 4));
  return -EINVAL;
 }

 prim <<= 25;
 while (n != 0) {

  unsigned int count = n > 255 ? 255 : n;
  if (reorder) {



   int reorder[3] = { -1, -1, -1 };
   reorder[start % 3] = 2;

   BEGIN_DMA(count * vtx_size + 1);
   DMA_DRAW_PRIMITIVE(count, prim, skip);

   for (i = start; i < start + count; ++i) {
    unsigned int j = i + reorder[i % 3];
    DMA_COPY(&vtxbuf[vb_stride * j], vtx_size);
   }

   DMA_COMMIT();
  } else {
   BEGIN_DMA(count * vtx_size + 1);
   DMA_DRAW_PRIMITIVE(count, prim, skip);

   if (vb_stride == vtx_size) {
    DMA_COPY(&vtxbuf[vb_stride * start],
      vtx_size * count);
   } else {
    for (i = start; i < start + count; ++i) {
     DMA_COPY(&vtxbuf [vb_stride * i],
       vtx_size);
    }
   }

   DMA_COMMIT();
  }

  start += count;
  n -= count;

  prim |= BCI_CMD_DRAW_CONT;
 }

 return 0;
}
