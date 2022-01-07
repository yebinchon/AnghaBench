
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_sw_func {int dummy; } ;
struct nvkm_sw {int engine; struct nvkm_sw_func const* func; int chan; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nvkm_sw* kzalloc (int,int ) ;
 int nvkm_engine_ctor (int *,struct nvkm_device*,int,int,int *) ;
 int nvkm_sw ;

int
nvkm_sw_new_(const struct nvkm_sw_func *func, struct nvkm_device *device,
      int index, struct nvkm_sw **psw)
{
 struct nvkm_sw *sw;

 if (!(sw = *psw = kzalloc(sizeof(*sw), GFP_KERNEL)))
  return -ENOMEM;
 INIT_LIST_HEAD(&sw->chan);
 sw->func = func;

 return nvkm_engine_ctor(&nvkm_sw, device, index, 1, &sw->engine);
}
