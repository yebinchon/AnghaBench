
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mlxcpld_i2c_priv {int lock; int adap; } ;


 int i2c_del_adapter (int *) ;
 int mutex_destroy (int *) ;
 struct mlxcpld_i2c_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mlxcpld_i2c_remove(struct platform_device *pdev)
{
 struct mlxcpld_i2c_priv *priv = platform_get_drvdata(pdev);

 i2c_del_adapter(&priv->adap);
 mutex_destroy(&priv->lock);

 return 0;
}
