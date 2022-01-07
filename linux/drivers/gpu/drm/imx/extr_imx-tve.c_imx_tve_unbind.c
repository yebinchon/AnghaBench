
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_tve {int dac_reg; } ;
struct device {int dummy; } ;


 int IS_ERR (int ) ;
 struct imx_tve* dev_get_drvdata (struct device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void imx_tve_unbind(struct device *dev, struct device *master,
 void *data)
{
 struct imx_tve *tve = dev_get_drvdata(dev);

 if (!IS_ERR(tve->dac_reg))
  regulator_disable(tve->dac_reg);
}
