
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_fme {int mgr; } ;
struct dfl_feature_platform_data {int dummy; } ;


 struct dfl_fme* dfl_fpga_pdata_get_private (struct dfl_feature_platform_data*) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static void dfl_fme_destroy_mgr(struct dfl_feature_platform_data *pdata)
{
 struct dfl_fme *priv = dfl_fpga_pdata_get_private(pdata);

 platform_device_unregister(priv->mgr);
}
