
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fifo_chan {int dummy; } ;
struct nv50_fifo_chan {int ramht; } ;


 struct nv50_fifo_chan* nv50_fifo_chan (struct nvkm_fifo_chan*) ;
 int nvkm_ramht_remove (int ,int) ;

void
nv50_fifo_chan_object_dtor(struct nvkm_fifo_chan *base, int cookie)
{
 struct nv50_fifo_chan *chan = nv50_fifo_chan(base);
 nvkm_ramht_remove(chan->ramht, cookie);
}
