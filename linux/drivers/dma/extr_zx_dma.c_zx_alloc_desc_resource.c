
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zx_dma_dev {int pool; } ;
struct zx_dma_desc_sw {int desc_num; int desc_hw; int desc_hw_lli; } ;
struct zx_dma_chan {int vc; } ;
struct zx_desc_hw {int dummy; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_ATOMIC ;
 int GFP_NOWAIT ;
 int LLI_BLOCK_SIZE ;
 int dev_dbg (int ,char*,int *,...) ;
 int dma_pool_zalloc (int ,int ,int *) ;
 int kfree (struct zx_dma_desc_sw*) ;
 struct zx_dma_desc_sw* kzalloc (int,int ) ;
 struct zx_dma_chan* to_zx_chan (struct dma_chan*) ;
 struct zx_dma_dev* to_zx_dma (TYPE_1__*) ;

__attribute__((used)) static struct zx_dma_desc_sw *zx_alloc_desc_resource(int num,
           struct dma_chan *chan)
{
 struct zx_dma_chan *c = to_zx_chan(chan);
 struct zx_dma_desc_sw *ds;
 struct zx_dma_dev *d = to_zx_dma(chan->device);
 int lli_limit = LLI_BLOCK_SIZE / sizeof(struct zx_desc_hw);

 if (num > lli_limit) {
  dev_dbg(chan->device->dev, "vch %p: sg num %d exceed max %d\n",
   &c->vc, num, lli_limit);
  return ((void*)0);
 }

 ds = kzalloc(sizeof(*ds), GFP_ATOMIC);
 if (!ds)
  return ((void*)0);

 ds->desc_hw = dma_pool_zalloc(d->pool, GFP_NOWAIT, &ds->desc_hw_lli);
 if (!ds->desc_hw) {
  dev_dbg(chan->device->dev, "vch %p: dma alloc fail\n", &c->vc);
  kfree(ds);
  return ((void*)0);
 }
 ds->desc_num = num;
 return ds;
}
