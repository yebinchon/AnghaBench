
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_secboot {TYPE_1__* func; } ;
struct TYPE_2__ {void* (* dtor ) (struct nvkm_secboot*) ;} ;


 struct nvkm_secboot* nvkm_secboot (struct nvkm_subdev*) ;
 void* stub1 (struct nvkm_secboot*) ;

__attribute__((used)) static void *
nvkm_secboot_dtor(struct nvkm_subdev *subdev)
{
 struct nvkm_secboot *sb = nvkm_secboot(subdev);
 void *ret = ((void*)0);

 if (sb->func->dtor)
  ret = sb->func->dtor(sb);

 return ret;
}
