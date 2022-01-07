
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;


 int mtk_hsdma_free_active_desc (struct dma_chan*) ;
 int mtk_hsdma_free_inactive_desc (struct dma_chan*) ;

__attribute__((used)) static int mtk_hsdma_terminate_all(struct dma_chan *c)
{




 mtk_hsdma_free_inactive_desc(c);







 mtk_hsdma_free_active_desc(c);

 return 0;
}
