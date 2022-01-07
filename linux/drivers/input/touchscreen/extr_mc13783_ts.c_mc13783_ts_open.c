
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13783_ts_priv {int mc13xxx; } ;
struct input_dev {int dummy; } ;


 int MC13783_TS_NAME ;
 int MC13XXX_ADC0 ;
 int MC13XXX_ADC0_TSMOD0 ;
 int MC13XXX_ADC0_TSMOD_MASK ;
 int MC13XXX_IRQ_TS ;
 struct mc13783_ts_priv* input_get_drvdata (struct input_dev*) ;
 int mc13783_ts_handler ;
 int mc13xxx_irq_ack (int ,int ) ;
 int mc13xxx_irq_free (int ,int ,struct mc13783_ts_priv*) ;
 int mc13xxx_irq_request (int ,int ,int ,int ,struct mc13783_ts_priv*) ;
 int mc13xxx_lock (int ) ;
 int mc13xxx_reg_rmw (int ,int ,int ,int ) ;
 int mc13xxx_unlock (int ) ;

__attribute__((used)) static int mc13783_ts_open(struct input_dev *dev)
{
 struct mc13783_ts_priv *priv = input_get_drvdata(dev);
 int ret;

 mc13xxx_lock(priv->mc13xxx);

 mc13xxx_irq_ack(priv->mc13xxx, MC13XXX_IRQ_TS);

 ret = mc13xxx_irq_request(priv->mc13xxx, MC13XXX_IRQ_TS,
  mc13783_ts_handler, MC13783_TS_NAME, priv);
 if (ret)
  goto out;

 ret = mc13xxx_reg_rmw(priv->mc13xxx, MC13XXX_ADC0,
   MC13XXX_ADC0_TSMOD_MASK, MC13XXX_ADC0_TSMOD0);
 if (ret)
  mc13xxx_irq_free(priv->mc13xxx, MC13XXX_IRQ_TS, priv);
out:
 mc13xxx_unlock(priv->mc13xxx);
 return ret;
}
