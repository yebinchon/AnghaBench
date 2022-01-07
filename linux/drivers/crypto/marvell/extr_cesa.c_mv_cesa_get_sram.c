
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct mv_cesa_engine {int sram_dma; scalar_t__ sram; int * pool; } ;
struct mv_cesa_dev {scalar_t__ sram_size; TYPE_2__* dev; TYPE_1__* caps; struct mv_cesa_engine* engines; } ;
struct TYPE_6__ {int of_node; } ;
struct TYPE_5__ {int nengines; } ;


 int DMA_BIDIRECTIONAL ;
 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 int dma_map_resource (TYPE_2__*,int ,scalar_t__,int ,int ) ;
 scalar_t__ dma_mapping_error (TYPE_2__*,int ) ;
 scalar_t__ gen_pool_dma_alloc (int *,scalar_t__,int *) ;
 int * of_gen_pool_get (int ,char*,int) ;
 struct mv_cesa_dev* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char const*) ;
 scalar_t__ resource_size (struct resource*) ;

__attribute__((used)) static int mv_cesa_get_sram(struct platform_device *pdev, int idx)
{
 struct mv_cesa_dev *cesa = platform_get_drvdata(pdev);
 struct mv_cesa_engine *engine = &cesa->engines[idx];
 const char *res_name = "sram";
 struct resource *res;

 engine->pool = of_gen_pool_get(cesa->dev->of_node,
           "marvell,crypto-srams", idx);
 if (engine->pool) {
  engine->sram = gen_pool_dma_alloc(engine->pool,
        cesa->sram_size,
        &engine->sram_dma);
  if (engine->sram)
   return 0;

  engine->pool = ((void*)0);
  return -ENOMEM;
 }

 if (cesa->caps->nengines > 1) {
  if (!idx)
   res_name = "sram0";
  else
   res_name = "sram1";
 }

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
        res_name);
 if (!res || resource_size(res) < cesa->sram_size)
  return -EINVAL;

 engine->sram = devm_ioremap_resource(cesa->dev, res);
 if (IS_ERR(engine->sram))
  return PTR_ERR(engine->sram);

 engine->sram_dma = dma_map_resource(cesa->dev, res->start,
         cesa->sram_size,
         DMA_BIDIRECTIONAL, 0);
 if (dma_mapping_error(cesa->dev, engine->sram_dma))
  return -ENOMEM;

 return 0;
}
