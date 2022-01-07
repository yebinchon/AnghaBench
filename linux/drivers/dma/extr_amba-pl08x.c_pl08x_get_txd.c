
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl08x_txd {int dsg_list; } ;
struct pl08x_dma_chan {int dummy; } ;


 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 struct pl08x_txd* kzalloc (int,int ) ;

__attribute__((used)) static struct pl08x_txd *pl08x_get_txd(struct pl08x_dma_chan *plchan)
{
 struct pl08x_txd *txd = kzalloc(sizeof(*txd), GFP_NOWAIT);

 if (txd)
  INIT_LIST_HEAD(&txd->dsg_list);
 return txd;
}
