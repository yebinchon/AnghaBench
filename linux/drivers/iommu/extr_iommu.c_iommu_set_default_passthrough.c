
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOMMU_DOMAIN_IDENTITY ;
 int iommu_def_domain_type ;
 int iommu_set_cmd_line_dma_api () ;

void iommu_set_default_passthrough(bool cmd_line)
{
 if (cmd_line)
  iommu_set_cmd_line_dma_api();

 iommu_def_domain_type = IOMMU_DOMAIN_IDENTITY;
}
