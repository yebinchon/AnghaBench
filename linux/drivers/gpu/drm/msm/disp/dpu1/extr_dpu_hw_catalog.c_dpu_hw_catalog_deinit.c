
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_mdss_cfg {int dummy; } ;


 int kfree (struct dpu_mdss_cfg*) ;

void dpu_hw_catalog_deinit(struct dpu_mdss_cfg *dpu_cfg)
{
 kfree(dpu_cfg);
}
