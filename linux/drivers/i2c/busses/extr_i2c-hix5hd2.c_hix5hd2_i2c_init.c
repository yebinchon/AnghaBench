
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_i2c_priv {int dummy; } ;


 int hix5hd2_i2c_clr_all_irq (struct hix5hd2_i2c_priv*) ;
 int hix5hd2_i2c_disable_irq (struct hix5hd2_i2c_priv*) ;
 int hix5hd2_i2c_drv_setrate (struct hix5hd2_i2c_priv*) ;
 int hix5hd2_i2c_enable_irq (struct hix5hd2_i2c_priv*) ;

__attribute__((used)) static void hix5hd2_i2c_init(struct hix5hd2_i2c_priv *priv)
{
 hix5hd2_i2c_disable_irq(priv);
 hix5hd2_i2c_drv_setrate(priv);
 hix5hd2_i2c_clr_all_irq(priv);
 hix5hd2_i2c_enable_irq(priv);
}
