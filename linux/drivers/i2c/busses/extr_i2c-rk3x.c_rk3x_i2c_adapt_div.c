
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct rk3x_i2c_calced_timings {int tuning; int div_high; int div_low; } ;
struct i2c_timings {int bus_freq_hz; } ;
struct rk3x_i2c {int dev; int pclk; int lock; TYPE_1__* soc_data; struct i2c_timings t; } ;
struct TYPE_2__ {int (* calc_timings ) (unsigned long,struct i2c_timings*,struct rk3x_i2c_calced_timings*) ;} ;


 int REG_CLKDIV ;
 int REG_CON ;
 int REG_CON_TUNING_MASK ;
 int WARN_ONCE (int,char*,int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_dbg (int ,char*,unsigned long,int,int,int) ;
 int div_u64 (int,unsigned long) ;
 int i2c_readl (struct rk3x_i2c*,int ) ;
 int i2c_writel (struct rk3x_i2c*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (unsigned long,struct i2c_timings*,struct rk3x_i2c_calced_timings*) ;

__attribute__((used)) static void rk3x_i2c_adapt_div(struct rk3x_i2c *i2c, unsigned long clk_rate)
{
 struct i2c_timings *t = &i2c->t;
 struct rk3x_i2c_calced_timings calc;
 u64 t_low_ns, t_high_ns;
 unsigned long flags;
 u32 val;
 int ret;

 ret = i2c->soc_data->calc_timings(clk_rate, t, &calc);
 WARN_ONCE(ret != 0, "Could not reach SCL freq %u", t->bus_freq_hz);

 clk_enable(i2c->pclk);

 spin_lock_irqsave(&i2c->lock, flags);
 val = i2c_readl(i2c, REG_CON);
 val &= ~REG_CON_TUNING_MASK;
 val |= calc.tuning;
 i2c_writel(i2c, val, REG_CON);
 i2c_writel(i2c, (calc.div_high << 16) | (calc.div_low & 0xffff),
     REG_CLKDIV);
 spin_unlock_irqrestore(&i2c->lock, flags);

 clk_disable(i2c->pclk);

 t_low_ns = div_u64(((u64)calc.div_low + 1) * 8 * 1000000000, clk_rate);
 t_high_ns = div_u64(((u64)calc.div_high + 1) * 8 * 1000000000,
       clk_rate);
 dev_dbg(i2c->dev,
  "CLK %lukhz, Req %uns, Act low %lluns high %lluns\n",
  clk_rate / 1000,
  1000000000 / t->bus_freq_hz,
  t_low_ns, t_high_ns);
}
