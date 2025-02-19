
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_ram {int stolen; int vram; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
struct mcp77_ram {int poller_base; struct nvkm_ram base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NVKM_RAM_MM_NORMAL ;
 int NVKM_RAM_MM_SHIFT ;
 int NVKM_RAM_TYPE_STOLEN ;
 struct mcp77_ram* kzalloc (int,int ) ;
 int mcp77_ram_func ;
 int nvkm_mm_fini (int *) ;
 int nvkm_mm_init (int *,int ,int,int,int) ;
 int nvkm_ram_ctor (int *,struct nvkm_fb*,int ,int,struct nvkm_ram*) ;
 scalar_t__ nvkm_rd32 (struct nvkm_device*,int) ;

int
mcp77_ram_new(struct nvkm_fb *fb, struct nvkm_ram **pram)
{
 struct nvkm_device *device = fb->subdev.device;
 u32 rsvd_head = ( 256 * 1024);
 u32 rsvd_tail = (1024 * 1024) + 0x1000;
 u64 base = (u64)nvkm_rd32(device, 0x100e10) << 12;
 u64 size = (u64)nvkm_rd32(device, 0x100e14) << 12;
 struct mcp77_ram *ram;
 int ret;

 if (!(ram = kzalloc(sizeof(*ram), GFP_KERNEL)))
  return -ENOMEM;
 *pram = &ram->base;

 ret = nvkm_ram_ctor(&mcp77_ram_func, fb, NVKM_RAM_TYPE_STOLEN,
       size, &ram->base);
 if (ret)
  return ret;

 ram->poller_base = size - rsvd_tail;
 ram->base.stolen = base;
 nvkm_mm_fini(&ram->base.vram);

 return nvkm_mm_init(&ram->base.vram, NVKM_RAM_MM_NORMAL,
       rsvd_head >> NVKM_RAM_MM_SHIFT,
       (size - rsvd_head - rsvd_tail) >>
       NVKM_RAM_MM_SHIFT, 1);
}
