
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct dpu_mdss_cfg {scalar_t__ hwversion; } ;
struct TYPE_3__ {scalar_t__ hw_rev; int (* cfg_init ) (struct dpu_mdss_cfg*) ;} ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DPU_ERROR (char*,scalar_t__) ;
 int ENODEV ;
 int ENOMEM ;
 struct dpu_mdss_cfg* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 TYPE_1__* cfg_handler ;
 int dpu_hw_catalog_deinit (struct dpu_mdss_cfg*) ;
 struct dpu_mdss_cfg* kzalloc (int,int ) ;
 int stub1 (struct dpu_mdss_cfg*) ;

struct dpu_mdss_cfg *dpu_hw_catalog_init(u32 hw_rev)
{
 int i;
 struct dpu_mdss_cfg *dpu_cfg;

 dpu_cfg = kzalloc(sizeof(*dpu_cfg), GFP_KERNEL);
 if (!dpu_cfg)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < ARRAY_SIZE(cfg_handler); i++) {
  if (cfg_handler[i].hw_rev == hw_rev) {
   cfg_handler[i].cfg_init(dpu_cfg);
   dpu_cfg->hwversion = hw_rev;
   return dpu_cfg;
  }
 }

 DPU_ERROR("unsupported chipset id:%X\n", hw_rev);
 dpu_hw_catalog_deinit(dpu_cfg);
 return ERR_PTR(-ENODEV);
}
