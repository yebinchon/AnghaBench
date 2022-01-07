
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_fault_buffer {int id; int entries; int get; int put; TYPE_2__* fault; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int nvkm_mask (struct nvkm_device*,int const,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int const) ;

__attribute__((used)) static void
gv100_fault_buffer_info(struct nvkm_fault_buffer *buffer)
{
 struct nvkm_device *device = buffer->fault->subdev.device;
 const u32 foff = buffer->id * 0x14;

 nvkm_mask(device, 0x100e34 + foff, 0x40000000, 0x40000000);

 buffer->entries = nvkm_rd32(device, 0x100e34 + foff) & 0x000fffff;
 buffer->get = 0x100e2c + foff;
 buffer->put = 0x100e30 + foff;
}
