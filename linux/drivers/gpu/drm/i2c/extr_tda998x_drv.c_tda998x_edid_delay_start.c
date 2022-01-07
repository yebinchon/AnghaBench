
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int edid_delay_active; int edid_delay_timer; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void tda998x_edid_delay_start(struct tda998x_priv *priv)
{
 priv->edid_delay_active = 1;
 mod_timer(&priv->edid_delay_timer, jiffies + HZ/10);
}
