
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_fault_buffer {int id; int addr; TYPE_2__* fault; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int lower_32_bits (int ) ;
 int nvkm_mask (struct nvkm_device*,int const,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int const,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void
tu102_fault_buffer_init(struct nvkm_fault_buffer *buffer)
{
 struct nvkm_device *device = buffer->fault->subdev.device;
 const u32 foff = buffer->id * 0x20;

 nvkm_mask(device, 0xb83010 + foff, 0xc0000000, 0x40000000);
 nvkm_wr32(device, 0xb83004 + foff, upper_32_bits(buffer->addr));
 nvkm_wr32(device, 0xb83000 + foff, lower_32_bits(buffer->addr));
 nvkm_mask(device, 0xb83010 + foff, 0x80000000, 0x80000000);
}
