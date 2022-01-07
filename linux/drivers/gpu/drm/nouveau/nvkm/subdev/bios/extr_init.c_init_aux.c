
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_i2c_aux {int dummy; } ;
struct nvkm_i2c {int dummy; } ;
struct nvbios_init {TYPE_3__* outp; TYPE_2__* subdev; } ;
struct TYPE_6__ {int i2c_index; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct nvkm_i2c* i2c; } ;


 int error (char*) ;
 scalar_t__ init_exec (struct nvbios_init*) ;
 struct nvkm_i2c_aux* nvkm_i2c_aux_find (struct nvkm_i2c*,int ) ;

__attribute__((used)) static struct nvkm_i2c_aux *
init_aux(struct nvbios_init *init)
{
 struct nvkm_i2c *i2c = init->subdev->device->i2c;
 if (!init->outp) {
  if (init_exec(init))
   error("script needs output for aux\n");
  return ((void*)0);
 }
 return nvkm_i2c_aux_find(i2c, init->outp->i2c_index);
}
