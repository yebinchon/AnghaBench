
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo_chan {int dummy; } ;


 void* gf100_fifo_chan (struct nvkm_fifo_chan*) ;

__attribute__((used)) static void *
gf100_fifo_gpfifo_dtor(struct nvkm_fifo_chan *base)
{
 return gf100_fifo_chan(base);
}
