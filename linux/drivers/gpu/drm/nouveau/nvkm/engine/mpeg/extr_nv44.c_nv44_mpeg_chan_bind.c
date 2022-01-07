
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_object {int dummy; } ;
struct nvkm_gpuobj {int addr; } ;
struct TYPE_6__ {TYPE_2__* engine; } ;
struct nv44_mpeg_chan {int inst; TYPE_3__ object; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;


 struct nv44_mpeg_chan* nv44_mpeg_chan (struct nvkm_object*) ;
 int nvkm_done (struct nvkm_gpuobj*) ;
 int nvkm_gpuobj_new (int ,int,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ;
 int nvkm_kmap (struct nvkm_gpuobj*) ;
 int nvkm_wo32 (struct nvkm_gpuobj*,int,int) ;

__attribute__((used)) static int
nv44_mpeg_chan_bind(struct nvkm_object *object, struct nvkm_gpuobj *parent,
      int align, struct nvkm_gpuobj **pgpuobj)
{
 struct nv44_mpeg_chan *chan = nv44_mpeg_chan(object);
 int ret = nvkm_gpuobj_new(chan->object.engine->subdev.device, 264 * 4,
      align, 1, parent, pgpuobj);
 if (ret == 0) {
  chan->inst = (*pgpuobj)->addr;
  nvkm_kmap(*pgpuobj);
  nvkm_wo32(*pgpuobj, 0x78, 0x02001ec1);
  nvkm_done(*pgpuobj);
 }
 return ret;
}
