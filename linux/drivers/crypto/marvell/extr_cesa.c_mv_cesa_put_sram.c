
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mv_cesa_engine {int sram_dma; scalar_t__ sram; scalar_t__ pool; } ;
struct mv_cesa_dev {int sram_size; int dev; struct mv_cesa_engine* engines; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_unmap_resource (int ,int ,int ,int ,int ) ;
 int gen_pool_free (scalar_t__,unsigned long,int ) ;
 struct mv_cesa_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void mv_cesa_put_sram(struct platform_device *pdev, int idx)
{
 struct mv_cesa_dev *cesa = platform_get_drvdata(pdev);
 struct mv_cesa_engine *engine = &cesa->engines[idx];

 if (engine->pool)
  gen_pool_free(engine->pool, (unsigned long)engine->sram,
         cesa->sram_size);
 else
  dma_unmap_resource(cesa->dev, engine->sram_dma,
       cesa->sram_size, DMA_BIDIRECTIONAL, 0);
}
