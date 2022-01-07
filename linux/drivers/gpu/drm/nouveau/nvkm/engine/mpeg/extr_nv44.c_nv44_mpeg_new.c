
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv44_mpeg {struct nvkm_engine engine; int chan; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nv44_mpeg* kzalloc (int,int ) ;
 int nv44_mpeg ;
 int nvkm_engine_ctor (int *,struct nvkm_device*,int,int,struct nvkm_engine*) ;

int
nv44_mpeg_new(struct nvkm_device *device, int index, struct nvkm_engine **pmpeg)
{
 struct nv44_mpeg *mpeg;

 if (!(mpeg = kzalloc(sizeof(*mpeg), GFP_KERNEL)))
  return -ENOMEM;
 INIT_LIST_HEAD(&mpeg->chan);
 *pmpeg = &mpeg->engine;

 return nvkm_engine_ctor(&nv44_mpeg, device, index, 1, &mpeg->engine);
}
