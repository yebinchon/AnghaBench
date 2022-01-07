
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad_func {int dummy; } ;
struct nvkm_i2c_pad {int id; int head; int mutex; int mode; struct nvkm_i2c* i2c; struct nvkm_i2c_pad_func const* func; } ;
struct nvkm_i2c {int pad; } ;


 int NVKM_I2C_PAD_OFF ;
 int PAD_TRACE (struct nvkm_i2c_pad*,char*) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;

void
nvkm_i2c_pad_ctor(const struct nvkm_i2c_pad_func *func, struct nvkm_i2c *i2c,
    int id, struct nvkm_i2c_pad *pad)
{
 pad->func = func;
 pad->i2c = i2c;
 pad->id = id;
 pad->mode = NVKM_I2C_PAD_OFF;
 mutex_init(&pad->mutex);
 list_add_tail(&pad->head, &i2c->pad);
 PAD_TRACE(pad, "ctor");
}
