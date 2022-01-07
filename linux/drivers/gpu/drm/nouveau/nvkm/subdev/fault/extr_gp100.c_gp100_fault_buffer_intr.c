
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_fault_buffer {TYPE_2__* fault; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int NVKM_SUBDEV_FAULT ;
 int nvkm_mc_intr_mask (struct nvkm_device*,int ,int) ;

__attribute__((used)) static void
gp100_fault_buffer_intr(struct nvkm_fault_buffer *buffer, bool enable)
{
 struct nvkm_device *device = buffer->fault->subdev.device;
 nvkm_mc_intr_mask(device, NVKM_SUBDEV_FAULT, enable);
}
