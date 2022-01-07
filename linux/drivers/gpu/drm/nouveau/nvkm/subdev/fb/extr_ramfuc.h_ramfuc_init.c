
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ramfuc {struct nvkm_fb* fb; int sequence; int memx; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_fb {TYPE_2__ subdev; } ;
struct TYPE_3__ {int pmu; } ;


 int nvkm_memx_init (int ,int *) ;

__attribute__((used)) static inline int
ramfuc_init(struct ramfuc *ram, struct nvkm_fb *fb)
{
 int ret = nvkm_memx_init(fb->subdev.device->pmu, &ram->memx);
 if (ret)
  return ret;

 ram->sequence++;
 ram->fb = fb;
 return 0;
}
