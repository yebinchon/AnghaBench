
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int index; int device; } ;
struct nvkm_gsp {int falcon; int addr; } ;


 int EINVAL ;
 int nvkm_falcon_v1_new (struct nvkm_subdev*,char*,int ,int *) ;
 struct nvkm_gsp* nvkm_gsp (struct nvkm_subdev*) ;
 int nvkm_top_addr (int ,int ) ;

__attribute__((used)) static int
gv100_gsp_oneinit(struct nvkm_subdev *subdev)
{
 struct nvkm_gsp *gsp = nvkm_gsp(subdev);

 gsp->addr = nvkm_top_addr(subdev->device, subdev->index);
 if (!gsp->addr)
  return -EINVAL;

 return nvkm_falcon_v1_new(subdev, "GSP", gsp->addr, &gsp->falcon);
}
