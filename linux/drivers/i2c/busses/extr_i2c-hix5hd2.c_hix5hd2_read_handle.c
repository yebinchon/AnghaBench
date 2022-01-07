
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_i2c_priv {int msg_len; scalar_t__ regs; } ;


 scalar_t__ HIX5I2C_COM ;
 int I2C_NO_ACK ;
 int I2C_READ ;
 int hix5hd2_rw_handle_stop (struct hix5hd2_i2c_priv*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void hix5hd2_read_handle(struct hix5hd2_i2c_priv *priv)
{
 if (priv->msg_len == 1) {

  writel_relaxed(I2C_READ | I2C_NO_ACK, priv->regs + HIX5I2C_COM);
 } else if (priv->msg_len > 1) {

  writel_relaxed(I2C_READ, priv->regs + HIX5I2C_COM);
 } else {
  hix5hd2_rw_handle_stop(priv);
 }
}
