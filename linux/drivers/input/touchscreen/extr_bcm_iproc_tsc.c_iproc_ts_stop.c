
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_ts_priv {int tsc_clk; int regmap; } ;
struct input_dev {int dummy; } ;


 int INTERRUPT_MASK ;
 int REGCTL2 ;
 int TS_CONTROLLER_PWR_TS ;
 int TS_FIFO_INTR_MASK ;
 int TS_PEN_INTR_MASK ;
 int clk_disable (int ) ;
 struct iproc_ts_priv* input_get_drvdata (struct input_dev*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void iproc_ts_stop(struct input_dev *dev)
{
 u32 val;
 struct iproc_ts_priv *priv = input_get_drvdata(dev);






 val = TS_PEN_INTR_MASK | TS_FIFO_INTR_MASK;
 regmap_update_bits(priv->regmap, INTERRUPT_MASK, val, 0);


 val = TS_CONTROLLER_PWR_TS;
 regmap_update_bits(priv->regmap, REGCTL2, val, val);

 clk_disable(priv->tsc_clk);
}
