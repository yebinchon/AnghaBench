
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_edma_desc {struct dw_edma_chan* chan; } ;
struct dw_edma_chan {int dummy; } ;


 int GFP_NOWAIT ;
 int dw_edma_alloc_chunk (struct dw_edma_desc*) ;
 int kfree (struct dw_edma_desc*) ;
 struct dw_edma_desc* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dw_edma_desc *dw_edma_alloc_desc(struct dw_edma_chan *chan)
{
 struct dw_edma_desc *desc;

 desc = kzalloc(sizeof(*desc), GFP_NOWAIT);
 if (unlikely(!desc))
  return ((void*)0);

 desc->chan = chan;
 if (!dw_edma_alloc_chunk(desc)) {
  kfree(desc);
  return ((void*)0);
 }

 return desc;
}
