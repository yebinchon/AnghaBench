
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nouveau_drm {TYPE_2__* dmem; } ;
struct nouveau_channel {int dummy; } ;
typedef enum nouveau_aper { ____Placeholder_nouveau_aper } nouveau_aper ;
struct TYPE_3__ {struct nouveau_channel* chan; } ;
struct TYPE_4__ {TYPE_1__ migrate; } ;


 int BEGIN_IMC0 (struct nouveau_channel*,int ,int,int) ;
 int BEGIN_NVC0 (struct nouveau_channel*,int ,int,int) ;
 int EINVAL ;

 int NOUVEAU_APER_VIRT ;

 int NvSubCopy ;
 int OUT_RING (struct nouveau_channel*,int) ;
 int PAGE_SIZE ;
 int RING_SPACE (struct nouveau_channel*,int) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int
nvc0b5_migrate_copy(struct nouveau_drm *drm, u64 npages,
      enum nouveau_aper dst_aper, u64 dst_addr,
      enum nouveau_aper src_aper, u64 src_addr)
{
 struct nouveau_channel *chan = drm->dmem->migrate.chan;
 u32 launch_dma = (1 << 9) |
    (1 << 8) |
    (1 << 7) |
    (1 << 2) |
    (2 << 0) ;
 int ret;

 ret = RING_SPACE(chan, 13);
 if (ret)
  return ret;

 if (src_aper != NOUVEAU_APER_VIRT) {
  switch (src_aper) {
  case 128:
   BEGIN_IMC0(chan, NvSubCopy, 0x0260, 0);
   break;
  case 129:
   BEGIN_IMC0(chan, NvSubCopy, 0x0260, 1);
   break;
  default:
   return -EINVAL;
  }
  launch_dma |= 0x00001000;
 }

 if (dst_aper != NOUVEAU_APER_VIRT) {
  switch (dst_aper) {
  case 128:
   BEGIN_IMC0(chan, NvSubCopy, 0x0264, 0);
   break;
  case 129:
   BEGIN_IMC0(chan, NvSubCopy, 0x0264, 1);
   break;
  default:
   return -EINVAL;
  }
  launch_dma |= 0x00002000;
 }

 BEGIN_NVC0(chan, NvSubCopy, 0x0400, 8);
 OUT_RING (chan, upper_32_bits(src_addr));
 OUT_RING (chan, lower_32_bits(src_addr));
 OUT_RING (chan, upper_32_bits(dst_addr));
 OUT_RING (chan, lower_32_bits(dst_addr));
 OUT_RING (chan, PAGE_SIZE);
 OUT_RING (chan, PAGE_SIZE);
 OUT_RING (chan, PAGE_SIZE);
 OUT_RING (chan, npages);
 BEGIN_NVC0(chan, NvSubCopy, 0x0300, 1);
 OUT_RING (chan, launch_dma);
 return 0;
}
