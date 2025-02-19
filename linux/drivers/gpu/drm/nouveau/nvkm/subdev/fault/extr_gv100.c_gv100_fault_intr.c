
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_fault {int event; scalar_t__* buffer; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int gv100_fault_intr_fault (struct nvkm_fault*) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int) ;
 int nvkm_event_send (int *,int,int,int *,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gv100_fault_intr(struct nvkm_fault *fault)
{
 struct nvkm_subdev *subdev = &fault->subdev;
 struct nvkm_device *device = subdev->device;
 u32 stat = nvkm_rd32(device, 0x100a20);

 if (stat & 0x80000000) {
  gv100_fault_intr_fault(fault);
  nvkm_wr32(device, 0x100e60, 0x80000000);
  stat &= ~0x80000000;
 }

 if (stat & 0x20000000) {
  if (fault->buffer[0]) {
   nvkm_event_send(&fault->event, 1, 0, ((void*)0), 0);
   stat &= ~0x20000000;
  }
 }

 if (stat & 0x08000000) {
  if (fault->buffer[1]) {
   nvkm_event_send(&fault->event, 1, 1, ((void*)0), 0);
   stat &= ~0x08000000;
  }
 }

 if (stat) {
  nvkm_debug(subdev, "intr %08x\n", stat);
 }
}
