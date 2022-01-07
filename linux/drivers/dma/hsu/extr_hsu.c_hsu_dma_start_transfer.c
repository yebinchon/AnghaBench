
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int node; } ;
struct hsu_dma_chan {int * desc; int vchan; } ;


 int hsu_dma_start_channel (struct hsu_dma_chan*) ;
 int list_del (int *) ;
 int * to_hsu_dma_desc (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static void hsu_dma_start_transfer(struct hsu_dma_chan *hsuc)
{
 struct virt_dma_desc *vdesc;


 vdesc = vchan_next_desc(&hsuc->vchan);
 if (!vdesc) {
  hsuc->desc = ((void*)0);
  return;
 }

 list_del(&vdesc->node);
 hsuc->desc = to_hsu_dma_desc(vdesc);


 hsu_dma_start_channel(hsuc);
}
