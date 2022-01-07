
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i801_priv {int features; int original_slvcmd; } ;


 int FEATURE_HOST_NOTIFY ;
 int SMBSLVCMD (struct i801_priv*) ;
 int outb_p (int ,int ) ;

__attribute__((used)) static void i801_disable_host_notify(struct i801_priv *priv)
{
 if (!(priv->features & FEATURE_HOST_NOTIFY))
  return;

 outb_p(priv->original_slvcmd, SMBSLVCMD(priv));
}
