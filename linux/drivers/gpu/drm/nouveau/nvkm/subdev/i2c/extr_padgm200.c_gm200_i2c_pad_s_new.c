
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c {int dummy; } ;


 int gm200_i2c_pad_s_func ;
 int nvkm_i2c_pad_new_ (int *,struct nvkm_i2c*,int,struct nvkm_i2c_pad**) ;

int
gm200_i2c_pad_s_new(struct nvkm_i2c *i2c, int id, struct nvkm_i2c_pad **ppad)
{
 return nvkm_i2c_pad_new_(&gm200_i2c_pad_s_func, i2c, id, ppad);
}
