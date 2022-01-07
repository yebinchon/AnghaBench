
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int engine; } ;
struct nvkm_oproxy {TYPE_1__ base; } ;
struct TYPE_5__ {int mutex; } ;
struct TYPE_6__ {TYPE_2__ subdev; } ;
struct nvkm_disp {TYPE_3__ engine; struct nvkm_oproxy* client; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nvkm_disp* nvkm_disp (int ) ;

__attribute__((used)) static void
nvkm_disp_class_del(struct nvkm_oproxy *oproxy)
{
 struct nvkm_disp *disp = nvkm_disp(oproxy->base.engine);
 mutex_lock(&disp->engine.subdev.mutex);
 if (disp->client == oproxy)
  disp->client = ((void*)0);
 mutex_unlock(&disp->engine.subdev.mutex);
}
