
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_nvsw {TYPE_1__* func; } ;
struct TYPE_2__ {int (* mthd ) (struct nvkm_nvsw*,int ,void*,int ) ;} ;


 int ENODEV ;
 struct nvkm_nvsw* nvkm_nvsw (struct nvkm_object*) ;
 int stub1 (struct nvkm_nvsw*,int ,void*,int ) ;

__attribute__((used)) static int
nvkm_nvsw_mthd_(struct nvkm_object *object, u32 mthd, void *data, u32 size)
{
 struct nvkm_nvsw *nvsw = nvkm_nvsw(object);
 if (nvsw->func->mthd)
  return nvsw->func->mthd(nvsw, mthd, data, size);
 return -ENODEV;
}
