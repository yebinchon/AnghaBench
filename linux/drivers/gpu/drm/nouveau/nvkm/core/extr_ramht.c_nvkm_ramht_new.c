
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_ramht {int size; int gpuobj; struct nvkm_gpuobj* parent; struct nvkm_device* device; TYPE_1__* data; int bits; } ;
struct nvkm_gpuobj {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {int chid; } ;


 int ENOMEM ;
 int data ;
 int nvkm_gpuobj_new (struct nvkm_device*,int,int,int,struct nvkm_gpuobj*,int *) ;
 int nvkm_ramht_del (struct nvkm_ramht**) ;
 int order_base_2 (int) ;
 int struct_size (struct nvkm_ramht*,int ,int) ;
 struct nvkm_ramht* vzalloc (int ) ;

int
nvkm_ramht_new(struct nvkm_device *device, u32 size, u32 align,
        struct nvkm_gpuobj *parent, struct nvkm_ramht **pramht)
{
 struct nvkm_ramht *ramht;
 int ret, i;

 if (!(ramht = *pramht = vzalloc(struct_size(ramht, data, (size >> 3)))))
  return -ENOMEM;

 ramht->device = device;
 ramht->parent = parent;
 ramht->size = size >> 3;
 ramht->bits = order_base_2(ramht->size);
 for (i = 0; i < ramht->size; i++)
  ramht->data[i].chid = -1;

 ret = nvkm_gpuobj_new(ramht->device, size, align, 1,
         ramht->parent, &ramht->gpuobj);
 if (ret)
  nvkm_ramht_del(pramht);
 return ret;
}
