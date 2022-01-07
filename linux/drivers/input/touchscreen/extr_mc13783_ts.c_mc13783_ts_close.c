
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13783_ts_priv {int work; int mc13xxx; } ;
struct input_dev {int dummy; } ;


 int MC13XXX_ADC0 ;
 int MC13XXX_ADC0_TSMOD_MASK ;
 int MC13XXX_IRQ_TS ;
 int cancel_delayed_work_sync (int *) ;
 struct mc13783_ts_priv* input_get_drvdata (struct input_dev*) ;
 int mc13xxx_irq_free (int ,int ,struct mc13783_ts_priv*) ;
 int mc13xxx_lock (int ) ;
 int mc13xxx_reg_rmw (int ,int ,int ,int ) ;
 int mc13xxx_unlock (int ) ;

__attribute__((used)) static void mc13783_ts_close(struct input_dev *dev)
{
 struct mc13783_ts_priv *priv = input_get_drvdata(dev);

 mc13xxx_lock(priv->mc13xxx);
 mc13xxx_reg_rmw(priv->mc13xxx, MC13XXX_ADC0,
   MC13XXX_ADC0_TSMOD_MASK, 0);
 mc13xxx_irq_free(priv->mc13xxx, MC13XXX_IRQ_TS, priv);
 mc13xxx_unlock(priv->mc13xxx);

 cancel_delayed_work_sync(&priv->work);
}
