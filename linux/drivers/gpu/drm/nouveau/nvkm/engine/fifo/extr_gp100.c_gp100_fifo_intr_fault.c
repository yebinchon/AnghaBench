
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_fifo {TYPE_2__ engine; } ;
struct nvkm_fault_data {int inst; int addr; int engine; int valid; int gpc; int hub; int access; int client; int reason; scalar_t__ time; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_fifo_fault (struct nvkm_fifo*,struct nvkm_fault_data*) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

void
gp100_fifo_intr_fault(struct nvkm_fifo *fifo, int unit)
{
 struct nvkm_device *device = fifo->engine.subdev.device;
 u32 inst = nvkm_rd32(device, 0x002800 + (unit * 0x10));
 u32 valo = nvkm_rd32(device, 0x002804 + (unit * 0x10));
 u32 vahi = nvkm_rd32(device, 0x002808 + (unit * 0x10));
 u32 type = nvkm_rd32(device, 0x00280c + (unit * 0x10));
 struct nvkm_fault_data info;

 info.inst = (u64)inst << 12;
 info.addr = ((u64)vahi << 32) | valo;
 info.time = 0;
 info.engine = unit;
 info.valid = 1;
 info.gpc = (type & 0x1f000000) >> 24;
 info.hub = (type & 0x00100000) >> 20;
 info.access = (type & 0x00070000) >> 16;
 info.client = (type & 0x00007f00) >> 8;
 info.reason = (type & 0x0000001f);

 nvkm_fifo_fault(fifo, &info);
}
