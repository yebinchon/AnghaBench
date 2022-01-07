
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_object {int dummy; } ;
struct nv50_disp_chan {TYPE_1__* func; } ;
struct TYPE_2__ {int (* intr ) (struct nv50_disp_chan*,int) ;int (* fini ) (struct nv50_disp_chan*) ;} ;


 struct nv50_disp_chan* nv50_disp_chan (struct nvkm_object*) ;
 int stub1 (struct nv50_disp_chan*) ;
 int stub2 (struct nv50_disp_chan*,int) ;

__attribute__((used)) static int
nv50_disp_chan_fini(struct nvkm_object *object, bool suspend)
{
 struct nv50_disp_chan *chan = nv50_disp_chan(object);
 chan->func->fini(chan);
 chan->func->intr(chan, 0);
 return 0;
}
