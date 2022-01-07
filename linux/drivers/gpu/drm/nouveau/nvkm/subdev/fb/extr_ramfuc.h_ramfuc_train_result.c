
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_fb {TYPE_2__ subdev; } ;
struct TYPE_3__ {int pmu; } ;


 int nvkm_memx_train_result (int ,int *,int ) ;

__attribute__((used)) static inline int
ramfuc_train_result(struct nvkm_fb *fb, u32 *result, u32 rsize)
{
 return nvkm_memx_train_result(fb->subdev.device->pmu, result, rsize);
}
