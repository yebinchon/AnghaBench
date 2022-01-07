
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fuse {int lock; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 scalar_t__ nvkm_mask (struct nvkm_device*,int,int,int) ;
 scalar_t__ nvkm_rd32 (struct nvkm_device*,scalar_t__) ;
 int nvkm_wr32 (struct nvkm_device*,int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32
gf100_fuse_read(struct nvkm_fuse *fuse, u32 addr)
{
 struct nvkm_device *device = fuse->subdev.device;
 unsigned long flags;
 u32 fuse_enable, unk, val;


 spin_lock_irqsave(&fuse->lock, flags);
 fuse_enable = nvkm_mask(device, 0x022400, 0x800, 0x800);
 unk = nvkm_mask(device, 0x021000, 0x1, 0x1);
 val = nvkm_rd32(device, 0x021100 + addr);
 nvkm_wr32(device, 0x021000, unk);
 nvkm_wr32(device, 0x022400, fuse_enable);
 spin_unlock_irqrestore(&fuse->lock, flags);
 return val;
}
