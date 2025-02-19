
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv50_instobj {int ram; struct nv50_instmem* imem; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {int lock; TYPE_1__ subdev; } ;
struct nv50_instmem {int addr; TYPE_2__ base; } ;


 struct nv50_instobj* nv50_instobj (struct nvkm_memory*) ;
 int nvkm_memory_addr (int ) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
nv50_instobj_wr32_slow(struct nvkm_memory *memory, u64 offset, u32 data)
{
 struct nv50_instobj *iobj = nv50_instobj(memory);
 struct nv50_instmem *imem = iobj->imem;
 struct nvkm_device *device = imem->base.subdev.device;
 u64 base = (nvkm_memory_addr(iobj->ram) + offset) & 0xffffff00000ULL;
 u64 addr = (nvkm_memory_addr(iobj->ram) + offset) & 0x000000fffffULL;
 unsigned long flags;

 spin_lock_irqsave(&imem->base.lock, flags);
 if (unlikely(imem->addr != base)) {
  nvkm_wr32(device, 0x001700, base >> 16);
  imem->addr = base;
 }
 nvkm_wr32(device, 0x700000 + addr, data);
 spin_unlock_irqrestore(&imem->base.lock, flags);
}
