
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {size_t index; struct nvkm_device* device; } ;
struct nvkm_engine {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {int chid; } ;
struct gf100_fifo_chan {int killed; int head; TYPE_1__ base; } ;
struct TYPE_6__ {struct nvkm_engine engine; int lock; } ;
struct TYPE_5__ {unsigned long long mask; int work; } ;
struct gf100_fifo {TYPE_3__ base; TYPE_2__ recover; } ;


 int assert_spin_locked (int *) ;
 int list_del_init (int *) ;
 int nvkm_error (struct nvkm_subdev*,char*,int ,int) ;
 int nvkm_fifo_kevent (TYPE_3__*,int) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int * nvkm_subdev_name ;
 int schedule_work (int *) ;

__attribute__((used)) static void
gf100_fifo_recover(struct gf100_fifo *fifo, struct nvkm_engine *engine,
     struct gf100_fifo_chan *chan)
{
 struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 u32 chid = chan->base.chid;

 nvkm_error(subdev, "%s engine fault on channel %d, recovering...\n",
     nvkm_subdev_name[engine->subdev.index], chid);
 assert_spin_locked(&fifo->base.lock);

 nvkm_mask(device, 0x003004 + (chid * 0x08), 0x00000001, 0x00000000);
 list_del_init(&chan->head);
 chan->killed = 1;

 if (engine != &fifo->base.engine)
  fifo->recover.mask |= 1ULL << engine->subdev.index;
 schedule_work(&fifo->recover.work);
 nvkm_fifo_kevent(&fifo->base, chid);
}
