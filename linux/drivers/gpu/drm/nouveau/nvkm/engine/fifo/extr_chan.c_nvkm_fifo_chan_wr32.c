
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {scalar_t__ user; scalar_t__ size; int addr; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ ioremap (int ,scalar_t__) ;
 int iowrite32_native (int ,scalar_t__) ;
 struct nvkm_fifo_chan* nvkm_fifo_chan (struct nvkm_object*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
nvkm_fifo_chan_wr32(struct nvkm_object *object, u64 addr, u32 data)
{
 struct nvkm_fifo_chan *chan = nvkm_fifo_chan(object);
 if (unlikely(!chan->user)) {
  chan->user = ioremap(chan->addr, chan->size);
  if (!chan->user)
   return -ENOMEM;
 }
 if (unlikely(addr + 4 > chan->size))
  return -EINVAL;
 iowrite32_native(data, chan->user + addr);
 return 0;
}
