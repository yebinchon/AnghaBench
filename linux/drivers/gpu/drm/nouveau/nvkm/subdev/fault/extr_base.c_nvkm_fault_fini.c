
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_fault {TYPE_1__* func; } ;
struct TYPE_2__ {int (* fini ) (struct nvkm_fault*) ;} ;


 struct nvkm_fault* nvkm_fault (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_fault*) ;

__attribute__((used)) static int
nvkm_fault_fini(struct nvkm_subdev *subdev, bool suspend)
{
 struct nvkm_fault *fault = nvkm_fault(subdev);
 if (fault->func->fini)
  fault->func->fini(fault);
 return 0;
}
