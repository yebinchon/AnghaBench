
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dma_addr; } ;
struct TYPE_5__ {TYPE_1__ continuous; } ;
struct pbl_context {int pbl_buf_size_in_bytes; TYPE_2__ phys; int pbl_buf; } ;
struct efa_dev {int ibdev; TYPE_3__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int dma_map_single (int *,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int ibdev_dbg (int *,char*,int *,int ) ;
 int ibdev_err (int *,char*) ;

__attribute__((used)) static int pbl_continuous_initialize(struct efa_dev *dev,
         struct pbl_context *pbl)
{
 dma_addr_t dma_addr;

 dma_addr = dma_map_single(&dev->pdev->dev, pbl->pbl_buf,
      pbl->pbl_buf_size_in_bytes, DMA_TO_DEVICE);
 if (dma_mapping_error(&dev->pdev->dev, dma_addr)) {
  ibdev_err(&dev->ibdev, "Unable to map pbl to DMA address\n");
  return -ENOMEM;
 }

 pbl->phys.continuous.dma_addr = dma_addr;
 ibdev_dbg(&dev->ibdev,
    "pbl continuous - dma_addr = %pad, size[%u]\n",
    &dma_addr, pbl->pbl_buf_size_in_bytes);

 return 0;
}
