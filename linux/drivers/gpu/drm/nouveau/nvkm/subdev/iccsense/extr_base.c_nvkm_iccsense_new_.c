
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_iccsense {int rails; int sensors; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nvkm_iccsense* kzalloc (int,int ) ;
 int nvkm_iccsense_ctor (struct nvkm_device*,int,struct nvkm_iccsense*) ;

int
nvkm_iccsense_new_(struct nvkm_device *device, int index,
     struct nvkm_iccsense **iccsense)
{
 if (!(*iccsense = kzalloc(sizeof(**iccsense), GFP_KERNEL)))
  return -ENOMEM;
 INIT_LIST_HEAD(&(*iccsense)->sensors);
 INIT_LIST_HEAD(&(*iccsense)->rails);
 nvkm_iccsense_ctor(device, index, *iccsense);
 return 0;
}
