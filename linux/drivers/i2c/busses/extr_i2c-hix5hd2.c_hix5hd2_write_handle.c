
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hix5hd2_i2c_priv {scalar_t__ msg_len; scalar_t__ regs; int msg_idx; TYPE_1__* msg; } ;
struct TYPE_2__ {int * buf; } ;


 scalar_t__ HIX5I2C_COM ;
 scalar_t__ HIX5I2C_TXR ;
 int I2C_WRITE ;
 int hix5hd2_rw_handle_stop (struct hix5hd2_i2c_priv*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hix5hd2_write_handle(struct hix5hd2_i2c_priv *priv)
{
 u8 data;

 if (priv->msg_len > 0) {
  data = priv->msg->buf[priv->msg_idx++];
  writel_relaxed(data, priv->regs + HIX5I2C_TXR);
  writel_relaxed(I2C_WRITE, priv->regs + HIX5I2C_COM);
 } else {
  hix5hd2_rw_handle_stop(priv);
 }
}
