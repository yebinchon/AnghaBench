
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_top {TYPE_1__* func; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int (* oneinit ) (struct nvkm_top*) ;} ;


 struct nvkm_top* nvkm_top (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_top*) ;

__attribute__((used)) static int
nvkm_top_oneinit(struct nvkm_subdev *subdev)
{
 struct nvkm_top *top = nvkm_top(subdev);
 return top->func->oneinit(top);
}
