
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_qdma_comp {int vdesc; } ;
struct fsl_qdma_chan {int vchan; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef int dma_addr_t ;


 int fsl_qdma_comp_fill_memcpy (struct fsl_qdma_comp*,int ,int ,size_t) ;
 struct fsl_qdma_comp* fsl_qdma_request_enqueue_desc (struct fsl_qdma_chan*) ;
 struct fsl_qdma_chan* to_fsl_qdma_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
fsl_qdma_prep_memcpy(struct dma_chan *chan, dma_addr_t dst,
       dma_addr_t src, size_t len, unsigned long flags)
{
 struct fsl_qdma_comp *fsl_comp;
 struct fsl_qdma_chan *fsl_chan = to_fsl_qdma_chan(chan);

 fsl_comp = fsl_qdma_request_enqueue_desc(fsl_chan);

 if (!fsl_comp)
  return ((void*)0);

 fsl_qdma_comp_fill_memcpy(fsl_comp, dst, src, len);

 return vchan_tx_prep(&fsl_chan->vchan, &fsl_comp->vdesc, flags);
}
