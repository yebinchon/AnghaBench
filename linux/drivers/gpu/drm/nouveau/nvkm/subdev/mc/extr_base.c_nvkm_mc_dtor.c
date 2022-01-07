
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;


 void* nvkm_mc (struct nvkm_subdev*) ;

__attribute__((used)) static void *
nvkm_mc_dtor(struct nvkm_subdev *subdev)
{
 return nvkm_mc(subdev);
}
