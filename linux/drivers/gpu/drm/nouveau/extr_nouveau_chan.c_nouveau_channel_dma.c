
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct nvif_device {int object; } ;
struct nv03_channel_dma_v0 {int chid; int offset; int pushbuf; scalar_t__ version; } ;
struct nouveau_drm {int dummy; } ;
struct TYPE_2__ {int addr; int ctxdma; } ;
struct nouveau_channel {int chid; int user; TYPE_1__ push; } ;
typedef int args ;






 int nouveau_channel_del (struct nouveau_channel**) ;
 int nouveau_channel_prep (struct nouveau_drm*,struct nvif_device*,int,struct nouveau_channel**) ;
 int nvif_handle (int *) ;
 int nvif_object_init (int *,int ,int ,struct nv03_channel_dma_v0*,int,int *) ;

__attribute__((used)) static int
nouveau_channel_dma(struct nouveau_drm *drm, struct nvif_device *device,
      struct nouveau_channel **pchan)
{
 static const u16 oclasses[] = { 128,
     129,
     130,
     131,
     0 };
 const u16 *oclass = oclasses;
 struct nv03_channel_dma_v0 args;
 struct nouveau_channel *chan;
 int ret;


 ret = nouveau_channel_prep(drm, device, 0x10000, &chan);
 *pchan = chan;
 if (ret)
  return ret;


 args.version = 0;
 args.pushbuf = nvif_handle(&chan->push.ctxdma);
 args.offset = chan->push.addr;

 do {
  ret = nvif_object_init(&device->object, 0, *oclass++,
           &args, sizeof(args), &chan->user);
  if (ret == 0) {
   chan->chid = args.chid;
   return ret;
  }
 } while (ret && *oclass);

 nouveau_channel_del(pchan);
 return ret;
}
