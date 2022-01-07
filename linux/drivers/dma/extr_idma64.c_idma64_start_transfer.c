
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virt_dma_desc {int node; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ chan; } ;
struct idma64_chan {int * desc; TYPE_2__ vchan; } ;
struct idma64 {int dummy; } ;


 int idma64_chan_init (struct idma64*,struct idma64_chan*) ;
 int idma64_chan_start (struct idma64*,struct idma64_chan*) ;
 int list_del (int *) ;
 struct idma64* to_idma64 (int ) ;
 int * to_idma64_desc (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (TYPE_2__*) ;

__attribute__((used)) static void idma64_start_transfer(struct idma64_chan *idma64c)
{
 struct idma64 *idma64 = to_idma64(idma64c->vchan.chan.device);
 struct virt_dma_desc *vdesc;


 vdesc = vchan_next_desc(&idma64c->vchan);
 if (!vdesc) {
  idma64c->desc = ((void*)0);
  return;
 }

 list_del(&vdesc->node);
 idma64c->desc = to_idma64_desc(vdesc);


 idma64_chan_init(idma64, idma64c);


 idma64_chan_start(idma64, idma64c);
}
