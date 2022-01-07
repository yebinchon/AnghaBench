
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_qdma_chan {int vchan; } ;
struct dma_chan {int dummy; } ;


 struct fsl_qdma_chan* to_fsl_qdma_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void fsl_qdma_synchronize(struct dma_chan *chan)
{
 struct fsl_qdma_chan *fsl_chan = to_fsl_qdma_chan(chan);

 vchan_synchronize(&fsl_chan->vchan);
}
