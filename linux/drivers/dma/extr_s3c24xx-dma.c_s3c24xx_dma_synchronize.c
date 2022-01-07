
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_dma_chan {int vc; } ;
struct dma_chan {int dummy; } ;


 struct s3c24xx_dma_chan* to_s3c24xx_dma_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void s3c24xx_dma_synchronize(struct dma_chan *chan)
{
 struct s3c24xx_dma_chan *s3cchan = to_s3c24xx_dma_chan(chan);

 vchan_synchronize(&s3cchan->vc);
}
