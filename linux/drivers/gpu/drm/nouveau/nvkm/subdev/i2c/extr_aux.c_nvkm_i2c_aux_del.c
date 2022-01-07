
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_aux {int i2c; int head; int func; } ;


 int AUX_TRACE (struct nvkm_i2c_aux*,char*) ;
 int WARN_ON (int) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct nvkm_i2c_aux*) ;
 int list_del (int *) ;

void
nvkm_i2c_aux_del(struct nvkm_i2c_aux **paux)
{
 struct nvkm_i2c_aux *aux = *paux;
 if (aux && !WARN_ON(!aux->func)) {
  AUX_TRACE(aux, "dtor");
  list_del(&aux->head);
  i2c_del_adapter(&aux->i2c);
  kfree(*paux);
  *paux = ((void*)0);
 }
}
