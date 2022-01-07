
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_volt {scalar_t__ speedo; TYPE_1__* func; int subdev; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int (* oneinit ) (struct nvkm_volt*) ;} ;


 int nvkm_debug (int *,char*,scalar_t__) ;
 struct nvkm_volt* nvkm_volt (struct nvkm_subdev*) ;
 scalar_t__ nvkm_volt_speedo_read (struct nvkm_volt*) ;
 int stub1 (struct nvkm_volt*) ;

__attribute__((used)) static int
nvkm_volt_oneinit(struct nvkm_subdev *subdev)
{
 struct nvkm_volt *volt = nvkm_volt(subdev);

 volt->speedo = nvkm_volt_speedo_read(volt);
 if (volt->speedo > 0)
  nvkm_debug(&volt->subdev, "speedo %x\n", volt->speedo);

 if (volt->func->oneinit)
  return volt->func->oneinit(volt);

 return 0;
}
