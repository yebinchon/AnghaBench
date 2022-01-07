
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct nvkm_volt {scalar_t__ speedo; struct nvkm_subdev subdev; } ;


 int nvkm_error (struct nvkm_subdev*,char*) ;

int
gf100_volt_oneinit(struct nvkm_volt *volt)
{
 struct nvkm_subdev *subdev = &volt->subdev;
 if (volt->speedo <= 0)
  nvkm_error(subdev, "couldn't find speedo value, volting not "
      "possible\n");
 return 0;
}
