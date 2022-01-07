
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad {int head; } ;


 int PAD_TRACE (struct nvkm_i2c_pad*,char*) ;
 int kfree (struct nvkm_i2c_pad*) ;
 int list_del (int *) ;

void
nvkm_i2c_pad_del(struct nvkm_i2c_pad **ppad)
{
 struct nvkm_i2c_pad *pad = *ppad;
 if (pad) {
  PAD_TRACE(pad, "dtor");
  list_del(&pad->head);
  kfree(pad);
  pad = ((void*)0);
 }
}
