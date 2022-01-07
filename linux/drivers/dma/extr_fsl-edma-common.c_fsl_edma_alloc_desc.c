
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_edma_desc {int n_tcds; TYPE_1__* tcd; struct fsl_edma_chan* echan; } ;
struct fsl_edma_chan {int tcd_pool; } ;
struct TYPE_2__ {int ptcd; int vtcd; } ;


 int GFP_NOWAIT ;
 int dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct fsl_edma_desc*) ;
 struct fsl_edma_desc* kzalloc (int ,int ) ;
 int struct_size (struct fsl_edma_desc*,int ,int) ;
 int tcd ;

__attribute__((used)) static struct fsl_edma_desc *fsl_edma_alloc_desc(struct fsl_edma_chan *fsl_chan,
  int sg_len)
{
 struct fsl_edma_desc *fsl_desc;
 int i;

 fsl_desc = kzalloc(struct_size(fsl_desc, tcd, sg_len), GFP_NOWAIT);
 if (!fsl_desc)
  return ((void*)0);

 fsl_desc->echan = fsl_chan;
 fsl_desc->n_tcds = sg_len;
 for (i = 0; i < sg_len; i++) {
  fsl_desc->tcd[i].vtcd = dma_pool_alloc(fsl_chan->tcd_pool,
     GFP_NOWAIT, &fsl_desc->tcd[i].ptcd);
  if (!fsl_desc->tcd[i].vtcd)
   goto err;
 }
 return fsl_desc;

err:
 while (--i >= 0)
  dma_pool_free(fsl_chan->tcd_pool, fsl_desc->tcd[i].vtcd,
    fsl_desc->tcd[i].ptcd);
 kfree(fsl_desc);
 return ((void*)0);
}
