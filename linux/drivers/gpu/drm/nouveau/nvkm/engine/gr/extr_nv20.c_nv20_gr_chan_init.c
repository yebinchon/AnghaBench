
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nv20_gr_chan {int chid; int inst; struct nv20_gr* gr; } ;
struct nv20_gr {int ctxtab; } ;


 struct nv20_gr_chan* nv20_gr_chan (struct nvkm_object*) ;
 int nvkm_done (int ) ;
 int nvkm_kmap (int ) ;
 int nvkm_memory_addr (int ) ;
 int nvkm_wo32 (int ,int,int) ;

int
nv20_gr_chan_init(struct nvkm_object *object)
{
 struct nv20_gr_chan *chan = nv20_gr_chan(object);
 struct nv20_gr *gr = chan->gr;
 u32 inst = nvkm_memory_addr(chan->inst);

 nvkm_kmap(gr->ctxtab);
 nvkm_wo32(gr->ctxtab, chan->chid * 4, inst >> 4);
 nvkm_done(gr->ctxtab);
 return 0;
}
