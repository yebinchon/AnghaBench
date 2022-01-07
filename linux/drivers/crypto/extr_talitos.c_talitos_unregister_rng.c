
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {int rng_registered; int rng; } ;
struct device {int dummy; } ;


 struct talitos_private* dev_get_drvdata (struct device*) ;
 int hwrng_unregister (int *) ;

__attribute__((used)) static void talitos_unregister_rng(struct device *dev)
{
 struct talitos_private *priv = dev_get_drvdata(dev);

 if (!priv->rng_registered)
  return;

 hwrng_unregister(&priv->rng);
 priv->rng_registered = 0;
}
