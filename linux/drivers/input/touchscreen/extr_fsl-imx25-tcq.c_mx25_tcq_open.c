
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mx25_tcq_priv {int clk; } ;
struct device {int dummy; } ;
struct input_dev {struct device dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 struct mx25_tcq_priv* dev_get_drvdata (struct device*) ;
 int mx25_tcq_init (struct mx25_tcq_priv*) ;
 int mx25_tcq_re_enable_touch_detection (struct mx25_tcq_priv*) ;

__attribute__((used)) static int mx25_tcq_open(struct input_dev *idev)
{
 struct device *dev = &idev->dev;
 struct mx25_tcq_priv *priv = dev_get_drvdata(dev);
 int error;

 error = clk_prepare_enable(priv->clk);
 if (error) {
  dev_err(dev, "Failed to enable ipg clock\n");
  return error;
 }

 error = mx25_tcq_init(priv);
 if (error) {
  dev_err(dev, "Failed to init tcq\n");
  clk_disable_unprepare(priv->clk);
  return error;
 }

 mx25_tcq_re_enable_touch_detection(priv);

 return 0;
}
