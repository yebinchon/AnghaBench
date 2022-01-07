
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_falcon {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_falcon* kzalloc (int,int ) ;
 int nvkm_falcon_ctor (int *,struct nvkm_subdev*,char const*,int ,struct nvkm_falcon*) ;
 int nvkm_falcon_v1 ;

int
nvkm_falcon_v1_new(struct nvkm_subdev *owner, const char *name, u32 addr,
     struct nvkm_falcon **pfalcon)
{
 struct nvkm_falcon *falcon;
 if (!(falcon = *pfalcon = kzalloc(sizeof(*falcon), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_falcon_ctor(&nvkm_falcon_v1, owner, name, addr, falcon);
 return 0;
}
