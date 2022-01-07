
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_aux {int dummy; } ;


 int g94_i2c_aux ;
 int g94_i2c_aux_new_ (int *,struct nvkm_i2c_pad*,int,int ,struct nvkm_i2c_aux**) ;

int
g94_i2c_aux_new(struct nvkm_i2c_pad *pad, int index, u8 drive,
  struct nvkm_i2c_aux **paux)
{
 return g94_i2c_aux_new_(&g94_i2c_aux, pad, index, drive, paux);
}
