
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regulator_bulk_data {int consumer; } ;
struct msm_dsi_host {TYPE_3__* cfg_hnd; struct regulator_bulk_data* supplies; } ;
struct dsi_reg_entry {scalar_t__ enable_load; scalar_t__ disable_load; } ;
struct TYPE_6__ {TYPE_2__* cfg; } ;
struct TYPE_4__ {int num; struct dsi_reg_entry* regs; } ;
struct TYPE_5__ {TYPE_1__ reg_cfg; } ;


 int DBG (char*) ;
 int pr_err (char*,int,...) ;
 int regulator_bulk_enable (int,struct regulator_bulk_data*) ;
 int regulator_set_load (int ,scalar_t__) ;

__attribute__((used)) static int dsi_host_regulator_enable(struct msm_dsi_host *msm_host)
{
 struct regulator_bulk_data *s = msm_host->supplies;
 const struct dsi_reg_entry *regs = msm_host->cfg_hnd->cfg->reg_cfg.regs;
 int num = msm_host->cfg_hnd->cfg->reg_cfg.num;
 int ret, i;

 DBG("");
 for (i = 0; i < num; i++) {
  if (regs[i].enable_load >= 0) {
   ret = regulator_set_load(s[i].consumer,
       regs[i].enable_load);
   if (ret < 0) {
    pr_err("regulator %d set op mode failed, %d\n",
     i, ret);
    goto fail;
   }
  }
 }

 ret = regulator_bulk_enable(num, s);
 if (ret < 0) {
  pr_err("regulator enable failed, %d\n", ret);
  goto fail;
 }

 return 0;

fail:
 for (i--; i >= 0; i--)
  regulator_set_load(s[i].consumer, regs[i].disable_load);
 return ret;
}
