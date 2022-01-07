
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hsdma_device {int pc; int pc_refcnt; } ;
struct dma_chan {int dummy; } ;


 int mtk_hsdma_free_pchan (struct mtk_hsdma_device*,int ) ;
 int mtk_hsdma_terminate_all (struct dma_chan*) ;
 int refcount_dec_and_test (int *) ;
 struct mtk_hsdma_device* to_hsdma_dev (struct dma_chan*) ;

__attribute__((used)) static void mtk_hsdma_free_chan_resources(struct dma_chan *c)
{
 struct mtk_hsdma_device *hsdma = to_hsdma_dev(c);


 mtk_hsdma_terminate_all(c);


 if (!refcount_dec_and_test(&hsdma->pc_refcnt))
  return;

 mtk_hsdma_free_pchan(hsdma, hsdma->pc);
}
