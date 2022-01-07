
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_fifo {TYPE_2__ engine; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static void
gk104_fifo_uevent_init(struct nvkm_fifo *fifo)
{
 struct nvkm_device *device = fifo->engine.subdev.device;
 nvkm_mask(device, 0x002140, 0x80000000, 0x80000000);
}
