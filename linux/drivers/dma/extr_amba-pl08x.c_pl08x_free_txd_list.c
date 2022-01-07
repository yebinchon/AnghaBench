
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl08x_driver_data {int dummy; } ;
struct pl08x_dma_chan {int vc; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int vchan_dma_desc_free_list (int *,int *) ;
 int vchan_get_all_descriptors (int *,int *) ;

__attribute__((used)) static void pl08x_free_txd_list(struct pl08x_driver_data *pl08x,
    struct pl08x_dma_chan *plchan)
{
 LIST_HEAD(head);

 vchan_get_all_descriptors(&plchan->vc, &head);
 vchan_dma_desc_free_list(&plchan->vc, &head);
}
