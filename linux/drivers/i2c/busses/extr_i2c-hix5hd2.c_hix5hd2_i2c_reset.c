
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_i2c_priv {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int hix5hd2_i2c_init (struct hix5hd2_i2c_priv*) ;
 int msleep (int) ;

__attribute__((used)) static void hix5hd2_i2c_reset(struct hix5hd2_i2c_priv *priv)
{
 clk_disable_unprepare(priv->clk);
 msleep(20);
 clk_prepare_enable(priv->clk);
 hix5hd2_i2c_init(priv);
}
