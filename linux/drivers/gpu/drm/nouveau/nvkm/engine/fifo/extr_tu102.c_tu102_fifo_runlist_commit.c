
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gk104_fifo {TYPE_3__ base; } ;


 int lower_32_bits (int ) ;
 int nvkm_memory_addr (struct nvkm_memory*) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void
tu102_fifo_runlist_commit(struct gk104_fifo *fifo, int runl,
     struct nvkm_memory *mem, int nr)
{
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 u64 addr = nvkm_memory_addr(mem);


 nvkm_wr32(device, 0x002b00 + (runl * 0x10), lower_32_bits(addr));
 nvkm_wr32(device, 0x002b04 + (runl * 0x10), upper_32_bits(addr));
 nvkm_wr32(device, 0x002b08 + (runl * 0x10), nr);


}
