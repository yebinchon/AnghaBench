
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad {int mode; } ;


 int PAD_TRACE (struct nvkm_i2c_pad*,char*) ;
 int nvkm_i2c_pad_mode_locked (struct nvkm_i2c_pad*,int ) ;

void
nvkm_i2c_pad_init(struct nvkm_i2c_pad *pad)
{
 PAD_TRACE(pad, "init");
 nvkm_i2c_pad_mode_locked(pad, pad->mode);
}
