
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_i2c_priv {scalar_t__ regs; int state; scalar_t__ stop; } ;


 scalar_t__ HIX5I2C_COM ;
 int HIX5I2C_STAT_SND_STOP ;
 int I2C_STOP ;
 int hix5hd2_rw_over (struct hix5hd2_i2c_priv*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hix5hd2_rw_handle_stop(struct hix5hd2_i2c_priv *priv)
{
 if (priv->stop) {
  priv->state = HIX5I2C_STAT_SND_STOP;
  writel_relaxed(I2C_STOP, priv->regs + HIX5I2C_COM);
 } else {
  hix5hd2_rw_over(priv);
 }
}
