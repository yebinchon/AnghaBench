
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; int id; } ;
struct TYPE_3__ {int * parent; } ;
struct TYPE_4__ {int name; TYPE_1__ dev; struct i2c_au1550_data* algo_data; int * algo; int nr; } ;
struct i2c_au1550_data {int xfer_timeout; TYPE_2__ adap; int psc_base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int au1550_algo ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct i2c_au1550_data* devm_kzalloc (int *,int,int ) ;
 int i2c_add_numbered_adapter (TYPE_2__*) ;
 int i2c_au1550_disable (struct i2c_au1550_data*) ;
 int i2c_au1550_setup (struct i2c_au1550_data*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct i2c_au1550_data*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int
i2c_au1550_probe(struct platform_device *pdev)
{
 struct i2c_au1550_data *priv;
 struct resource *r;
 int ret;

 priv = devm_kzalloc(&pdev->dev, sizeof(struct i2c_au1550_data),
       GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->psc_base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(priv->psc_base))
  return PTR_ERR(priv->psc_base);

 priv->xfer_timeout = 200;

 priv->adap.nr = pdev->id;
 priv->adap.algo = &au1550_algo;
 priv->adap.algo_data = priv;
 priv->adap.dev.parent = &pdev->dev;
 strlcpy(priv->adap.name, "Au1xxx PSC I2C", sizeof(priv->adap.name));


 i2c_au1550_setup(priv);

 ret = i2c_add_numbered_adapter(&priv->adap);
 if (ret) {
  i2c_au1550_disable(priv);
  return ret;
 }

 platform_set_drvdata(pdev, priv);
 return 0;
}
