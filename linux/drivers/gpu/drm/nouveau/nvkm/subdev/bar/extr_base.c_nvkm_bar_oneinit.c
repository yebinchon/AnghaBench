
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_bar {TYPE_1__* func; } ;
struct TYPE_2__ {int (* oneinit ) (struct nvkm_bar*) ;} ;


 struct nvkm_bar* nvkm_bar (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_bar*) ;

__attribute__((used)) static int
nvkm_bar_oneinit(struct nvkm_subdev *subdev)
{
 struct nvkm_bar *bar = nvkm_bar(subdev);
 return bar->func->oneinit(bar);
}
