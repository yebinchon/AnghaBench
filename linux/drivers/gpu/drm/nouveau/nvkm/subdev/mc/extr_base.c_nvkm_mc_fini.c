
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int device; } ;


 int nvkm_mc_intr_unarm (int ) ;

__attribute__((used)) static int
nvkm_mc_fini(struct nvkm_subdev *subdev, bool suspend)
{
 nvkm_mc_intr_unarm(subdev->device);
 return 0;
}
