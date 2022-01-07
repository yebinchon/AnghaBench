
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnxt_qplib_stats {int fw_id; int dma_map; scalar_t__ dma; int size; } ;


 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int memset (struct bnxt_qplib_stats*,int ,int) ;

__attribute__((used)) static void bnxt_qplib_free_stats_ctx(struct pci_dev *pdev,
          struct bnxt_qplib_stats *stats)
{
 if (stats->dma) {
  dma_free_coherent(&pdev->dev, stats->size,
      stats->dma, stats->dma_map);
 }
 memset(stats, 0, sizeof(*stats));
 stats->fw_id = -1;
}
