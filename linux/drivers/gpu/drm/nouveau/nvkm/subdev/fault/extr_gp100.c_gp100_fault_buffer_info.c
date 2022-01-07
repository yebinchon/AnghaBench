
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_fault_buffer {int get; int put; TYPE_2__* fault; int entries; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int nvkm_rd32 (int ,int) ;

__attribute__((used)) static void
gp100_fault_buffer_info(struct nvkm_fault_buffer *buffer)
{
 buffer->entries = nvkm_rd32(buffer->fault->subdev.device, 0x002a78);
 buffer->get = 0x002a7c;
 buffer->put = 0x002a80;
}
