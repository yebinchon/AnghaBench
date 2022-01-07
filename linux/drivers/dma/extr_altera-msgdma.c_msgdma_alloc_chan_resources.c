
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_submit; } ;
struct msgdma_sw_desc {int node; TYPE_1__ async_tx; } ;
struct msgdma_device {int idle; int desc_free_cnt; int free_list; int dmachan; struct msgdma_sw_desc* sw_desq; } ;
struct dma_chan {int dummy; } ;


 int ENOMEM ;
 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int MSGDMA_DESC_NUM ;
 int dma_async_tx_descriptor_init (TYPE_1__*,int *) ;
 struct msgdma_sw_desc* kcalloc (int,int,int ) ;
 int list_add_tail (int *,int *) ;
 int msgdma_tx_submit ;
 struct msgdma_device* to_mdev (struct dma_chan*) ;

__attribute__((used)) static int msgdma_alloc_chan_resources(struct dma_chan *dchan)
{
 struct msgdma_device *mdev = to_mdev(dchan);
 struct msgdma_sw_desc *desc;
 int i;

 mdev->sw_desq = kcalloc(MSGDMA_DESC_NUM, sizeof(*desc), GFP_NOWAIT);
 if (!mdev->sw_desq)
  return -ENOMEM;

 mdev->idle = 1;
 mdev->desc_free_cnt = MSGDMA_DESC_NUM;

 INIT_LIST_HEAD(&mdev->free_list);

 for (i = 0; i < MSGDMA_DESC_NUM; i++) {
  desc = mdev->sw_desq + i;
  dma_async_tx_descriptor_init(&desc->async_tx, &mdev->dmachan);
  desc->async_tx.tx_submit = msgdma_tx_submit;
  list_add_tail(&desc->node, &mdev->free_list);
 }

 return MSGDMA_DESC_NUM;
}
