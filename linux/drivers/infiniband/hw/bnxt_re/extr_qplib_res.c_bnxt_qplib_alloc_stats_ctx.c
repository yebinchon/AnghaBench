
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ctx_hw_stats {int dummy; } ;
struct bnxt_qplib_stats {int fw_id; int dma; int dma_map; int size; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int memset (struct bnxt_qplib_stats*,int ,int) ;

__attribute__((used)) static int bnxt_qplib_alloc_stats_ctx(struct pci_dev *pdev,
          struct bnxt_qplib_stats *stats)
{
 memset(stats, 0, sizeof(*stats));
 stats->fw_id = -1;




 stats->size = ALIGN(sizeof(struct ctx_hw_stats), 128);
 stats->dma = dma_alloc_coherent(&pdev->dev, stats->size,
     &stats->dma_map, GFP_KERNEL);
 if (!stats->dma) {
  dev_err(&pdev->dev, "Stats DMA allocation failed\n");
  return -ENOMEM;
 }
 return 0;
}
