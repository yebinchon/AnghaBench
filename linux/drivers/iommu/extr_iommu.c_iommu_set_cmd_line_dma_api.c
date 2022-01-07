
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOMMU_CMD_LINE_DMA_API ;
 int iommu_cmd_line ;

__attribute__((used)) static void iommu_set_cmd_line_dma_api(void)
{
 iommu_cmd_line |= IOMMU_CMD_LINE_DMA_API;
}
