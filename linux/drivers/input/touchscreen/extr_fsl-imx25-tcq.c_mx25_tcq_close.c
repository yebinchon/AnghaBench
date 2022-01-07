
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mx25_tcq_priv {int clk; } ;
struct input_dev {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct mx25_tcq_priv* input_get_drvdata (struct input_dev*) ;
 int mx25_tcq_disable_fifo_irq (struct mx25_tcq_priv*) ;
 int mx25_tcq_disable_touch_irq (struct mx25_tcq_priv*) ;
 int mx25_tcq_force_queue_stop (struct mx25_tcq_priv*) ;

__attribute__((used)) static void mx25_tcq_close(struct input_dev *idev)
{
 struct mx25_tcq_priv *priv = input_get_drvdata(idev);

 mx25_tcq_force_queue_stop(priv);
 mx25_tcq_disable_touch_irq(priv);
 mx25_tcq_disable_fifo_irq(priv);
 clk_disable_unprepare(priv->clk);
}
