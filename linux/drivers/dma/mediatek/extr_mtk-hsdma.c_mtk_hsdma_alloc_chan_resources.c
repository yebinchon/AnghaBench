
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hsdma_device {int pc_refcnt; int pc; } ;
struct dma_chan {int dummy; } ;


 int mtk_hsdma_alloc_pchan (struct mtk_hsdma_device*,int ) ;
 int refcount_inc (int *) ;
 int refcount_read (int *) ;
 int refcount_set (int *,int) ;
 struct mtk_hsdma_device* to_hsdma_dev (struct dma_chan*) ;

__attribute__((used)) static int mtk_hsdma_alloc_chan_resources(struct dma_chan *c)
{
 struct mtk_hsdma_device *hsdma = to_hsdma_dev(c);
 int err;






 if (!refcount_read(&hsdma->pc_refcnt)) {
  err = mtk_hsdma_alloc_pchan(hsdma, hsdma->pc);
  if (err)
   return err;




  refcount_set(&hsdma->pc_refcnt, 1);
 } else {
  refcount_inc(&hsdma->pc_refcnt);
 }

 return 0;
}
