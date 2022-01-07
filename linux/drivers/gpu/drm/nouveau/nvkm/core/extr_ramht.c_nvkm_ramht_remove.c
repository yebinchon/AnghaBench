
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ramht {int dummy; } ;


 int nvkm_ramht_update (struct nvkm_ramht*,int,int *,int,int ,int ,int ) ;

void
nvkm_ramht_remove(struct nvkm_ramht *ramht, int cookie)
{
 if (--cookie >= 0)
  nvkm_ramht_update(ramht, cookie, ((void*)0), -1, 0, 0, 0);
}
