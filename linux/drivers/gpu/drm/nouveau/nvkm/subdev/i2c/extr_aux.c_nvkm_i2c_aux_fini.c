
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_aux {int enabled; int mutex; } ;


 int AUX_TRACE (struct nvkm_i2c_aux*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void
nvkm_i2c_aux_fini(struct nvkm_i2c_aux *aux)
{
 AUX_TRACE(aux, "fini");
 mutex_lock(&aux->mutex);
 aux->enabled = 0;
 mutex_unlock(&aux->mutex);
}
