
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int device; } ;
struct nvkm_bar {TYPE_1__* func; } ;
struct TYPE_2__ {void* (* dtor ) (struct nvkm_bar*) ;} ;


 struct nvkm_bar* nvkm_bar (struct nvkm_subdev*) ;
 int nvkm_bar_bar2_fini (int ) ;
 void* stub1 (struct nvkm_bar*) ;

__attribute__((used)) static void *
nvkm_bar_dtor(struct nvkm_subdev *subdev)
{
 struct nvkm_bar *bar = nvkm_bar(subdev);
 nvkm_bar_bar2_fini(subdev->device);
 return bar->func->dtor(bar);
}
