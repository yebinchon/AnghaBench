
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_feature_platform_data {int dummy; } ;
struct dfl_afu {int regions; } ;


 int INIT_LIST_HEAD (int *) ;
 struct dfl_afu* dfl_fpga_pdata_get_private (struct dfl_feature_platform_data*) ;

void afu_mmio_region_init(struct dfl_feature_platform_data *pdata)
{
 struct dfl_afu *afu = dfl_fpga_pdata_get_private(pdata);

 INIT_LIST_HEAD(&afu->regions);
}
