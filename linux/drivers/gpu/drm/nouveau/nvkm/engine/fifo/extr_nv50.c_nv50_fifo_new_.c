
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo_func {int dummy; } ;
struct nvkm_fifo {int mask; } ;
struct nvkm_device {int dummy; } ;
struct nv50_fifo {struct nvkm_fifo base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv50_fifo* kzalloc (int,int ) ;
 int nvkm_fifo_ctor (struct nvkm_fifo_func const*,struct nvkm_device*,int,int,struct nvkm_fifo*) ;
 int set_bit (int,int ) ;

int
nv50_fifo_new_(const struct nvkm_fifo_func *func, struct nvkm_device *device,
        int index, struct nvkm_fifo **pfifo)
{
 struct nv50_fifo *fifo;
 int ret;

 if (!(fifo = kzalloc(sizeof(*fifo), GFP_KERNEL)))
  return -ENOMEM;
 *pfifo = &fifo->base;

 ret = nvkm_fifo_ctor(func, device, index, 128, &fifo->base);
 if (ret)
  return ret;

 set_bit(0, fifo->base.mask);
 set_bit(127, fifo->base.mask);
 return 0;
}
