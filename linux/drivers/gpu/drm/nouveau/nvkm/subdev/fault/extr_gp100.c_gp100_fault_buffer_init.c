
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_fault_buffer {int addr; TYPE_2__* fault; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int lower_32_bits (int ) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void
gp100_fault_buffer_init(struct nvkm_fault_buffer *buffer)
{
 struct nvkm_device *device = buffer->fault->subdev.device;
 nvkm_wr32(device, 0x002a74, upper_32_bits(buffer->addr));
 nvkm_wr32(device, 0x002a70, lower_32_bits(buffer->addr));
 nvkm_mask(device, 0x002a70, 0x00000001, 0x00000001);
}
