
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i801_priv {int features; int original_slvcmd; } ;
struct i2c_adapter {int dummy; } ;


 int FEATURE_HOST_NOTIFY ;
 int SMBSLVCMD (struct i801_priv*) ;
 int SMBSLVCMD_HST_NTFY_INTREN ;
 int SMBSLVSTS (struct i801_priv*) ;
 int SMBSLVSTS_HST_NTFY_STS ;
 struct i801_priv* i2c_get_adapdata (struct i2c_adapter*) ;
 int outb_p (int,int ) ;

__attribute__((used)) static void i801_enable_host_notify(struct i2c_adapter *adapter)
{
 struct i801_priv *priv = i2c_get_adapdata(adapter);

 if (!(priv->features & FEATURE_HOST_NOTIFY))
  return;

 if (!(SMBSLVCMD_HST_NTFY_INTREN & priv->original_slvcmd))
  outb_p(SMBSLVCMD_HST_NTFY_INTREN | priv->original_slvcmd,
         SMBSLVCMD(priv));


 outb_p(SMBSLVSTS_HST_NTFY_STS, SMBSLVSTS(priv));
}
