
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct nvkm_ramht {size_t size; TYPE_1__* data; } ;
struct nvkm_gpuobj {int dummy; } ;
struct TYPE_2__ {int chid; size_t handle; struct nvkm_gpuobj* inst; } ;


 size_t nvkm_ramht_hash (struct nvkm_ramht*,int,size_t) ;

struct nvkm_gpuobj *
nvkm_ramht_search(struct nvkm_ramht *ramht, int chid, u32 handle)
{
 u32 co, ho;

 co = ho = nvkm_ramht_hash(ramht, chid, handle);
 do {
  if (ramht->data[co].chid == chid) {
   if (ramht->data[co].handle == handle)
    return ramht->data[co].inst;
  }

  if (++co >= ramht->size)
   co = 0;
 } while (co != ho);

 return ((void*)0);
}
