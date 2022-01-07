
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_aux {struct nvkm_i2c_pad* pad; } ;


 int AUX_TRACE (struct nvkm_i2c_aux*,char*,char*) ;
 int NVKM_I2C_PAD_AUX ;
 int NVKM_I2C_PAD_OFF ;
 int nvkm_i2c_pad_mode (struct nvkm_i2c_pad*,int ) ;

void
nvkm_i2c_aux_monitor(struct nvkm_i2c_aux *aux, bool monitor)
{
 struct nvkm_i2c_pad *pad = aux->pad;
 AUX_TRACE(aux, "monitor: %s", monitor ? "yes" : "no");
 if (monitor)
  nvkm_i2c_pad_mode(pad, NVKM_I2C_PAD_AUX);
 else
  nvkm_i2c_pad_mode(pad, NVKM_I2C_PAD_OFF);
}
