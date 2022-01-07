
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_i2c_aux {TYPE_1__* func; } ;
struct TYPE_2__ {int (* xfer ) (struct nvkm_i2c_aux*,int,int ,int ,int *,int *) ;int address_only; } ;


 int AUX_ERR (struct nvkm_i2c_aux*,char*) ;
 int ENOSYS ;
 int stub1 (struct nvkm_i2c_aux*,int,int ,int ,int *,int *) ;

int
nvkm_i2c_aux_xfer(struct nvkm_i2c_aux *aux, bool retry, u8 type,
    u32 addr, u8 *data, u8 *size)
{
 if (!*size && !aux->func->address_only) {
  AUX_ERR(aux, "address-only transaction dropped");
  return -ENOSYS;
 }
 return aux->func->xfer(aux, retry, type, addr, data, size);
}
