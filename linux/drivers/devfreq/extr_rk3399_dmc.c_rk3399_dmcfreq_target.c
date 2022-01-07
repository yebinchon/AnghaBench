
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk3399_dmcfreq {unsigned long rate; unsigned long odt_dis_freq; unsigned long volt; int lock; int vdd_center; int dmc_clk; int odt_pd_arg1; int odt_pd_arg0; } ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;
struct arm_smccc_res {int dummy; } ;


 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 int PTR_ERR (struct dev_pm_opp*) ;
 int ROCKCHIP_SIP_CONFIG_DRAM_SET_ODT_PD ;
 int ROCKCHIP_SIP_DRAM_FREQ ;
 int arm_smccc_smc (int ,int ,int ,int ,int,int ,int ,int ,struct arm_smccc_res*) ;
 unsigned long clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_err (struct device*,char*,unsigned long,...) ;
 struct rk3399_dmcfreq* dev_get_drvdata (struct device*) ;
 unsigned long dev_pm_opp_get_freq (struct dev_pm_opp*) ;
 unsigned long dev_pm_opp_get_voltage (struct dev_pm_opp*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;
 struct dev_pm_opp* devfreq_recommended_opp (struct device*,unsigned long*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_set_voltage (int ,unsigned long,unsigned long) ;

__attribute__((used)) static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
     u32 flags)
{
 struct rk3399_dmcfreq *dmcfreq = dev_get_drvdata(dev);
 struct dev_pm_opp *opp;
 unsigned long old_clk_rate = dmcfreq->rate;
 unsigned long target_volt, target_rate;
 struct arm_smccc_res res;
 bool odt_enable = 0;
 int err;

 opp = devfreq_recommended_opp(dev, freq, flags);
 if (IS_ERR(opp))
  return PTR_ERR(opp);

 target_rate = dev_pm_opp_get_freq(opp);
 target_volt = dev_pm_opp_get_voltage(opp);
 dev_pm_opp_put(opp);

 if (dmcfreq->rate == target_rate)
  return 0;

 mutex_lock(&dmcfreq->lock);

 if (target_rate >= dmcfreq->odt_dis_freq)
  odt_enable = 1;






 arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, dmcfreq->odt_pd_arg0,
        dmcfreq->odt_pd_arg1,
        ROCKCHIP_SIP_CONFIG_DRAM_SET_ODT_PD,
        odt_enable, 0, 0, 0, &res);





 if (old_clk_rate < target_rate) {
  err = regulator_set_voltage(dmcfreq->vdd_center, target_volt,
         target_volt);
  if (err) {
   dev_err(dev, "Cannot set voltage %lu uV\n",
    target_volt);
   goto out;
  }
 }

 err = clk_set_rate(dmcfreq->dmc_clk, target_rate);
 if (err) {
  dev_err(dev, "Cannot set frequency %lu (%d)\n", target_rate,
   err);
  regulator_set_voltage(dmcfreq->vdd_center, dmcfreq->volt,
          dmcfreq->volt);
  goto out;
 }







 dmcfreq->rate = clk_get_rate(dmcfreq->dmc_clk);


 if (dmcfreq->rate != target_rate) {
  dev_err(dev, "Got wrong frequency, Request %lu, Current %lu\n",
   target_rate, dmcfreq->rate);
  regulator_set_voltage(dmcfreq->vdd_center, dmcfreq->volt,
          dmcfreq->volt);
  goto out;
 } else if (old_clk_rate > target_rate)
  err = regulator_set_voltage(dmcfreq->vdd_center, target_volt,
         target_volt);
 if (err)
  dev_err(dev, "Cannot set voltage %lu uV\n", target_volt);

 dmcfreq->rate = target_rate;
 dmcfreq->volt = target_volt;

out:
 mutex_unlock(&dmcfreq->lock);
 return err;
}
