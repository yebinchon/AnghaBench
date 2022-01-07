
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nvbios_init {int head; TYPE_1__* subdev; } ;
struct TYPE_2__ {int device; } ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 int nvkm_rdport (int ,int ,int ) ;

__attribute__((used)) static u8
init_rdport(struct nvbios_init *init, u16 port)
{
 if (init_exec(init))
  return nvkm_rdport(init->subdev->device, init->head, port);
 return 0x00;
}
