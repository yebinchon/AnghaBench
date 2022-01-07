
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_subdev {int device; } ;
struct nvbios_init {int head; struct nvkm_subdev* subdev; } ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 int nvkm_rdvgai (int ,int,int ,int) ;

__attribute__((used)) static u8
init_rdvgai(struct nvbios_init *init, u16 port, u8 index)
{
 struct nvkm_subdev *subdev = init->subdev;
 if (init_exec(init)) {
  int head = init->head < 0 ? 0 : init->head;
  return nvkm_rdvgai(subdev->device, head, port, index);
 }
 return 0x00;
}
