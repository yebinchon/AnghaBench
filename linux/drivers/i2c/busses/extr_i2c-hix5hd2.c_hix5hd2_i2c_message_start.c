
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_i2c_priv {int lock; scalar_t__ regs; int msg; } ;


 scalar_t__ HIX5I2C_COM ;
 scalar_t__ HIX5I2C_TXR ;
 int I2C_START ;
 int I2C_WRITE ;
 int hix5hd2_i2c_clr_all_irq (struct hix5hd2_i2c_priv*) ;
 int hix5hd2_i2c_enable_irq (struct hix5hd2_i2c_priv*) ;
 int i2c_8bit_addr_from_msg (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void hix5hd2_i2c_message_start(struct hix5hd2_i2c_priv *priv, int stop)
{
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 hix5hd2_i2c_clr_all_irq(priv);
 hix5hd2_i2c_enable_irq(priv);

 writel_relaxed(i2c_8bit_addr_from_msg(priv->msg),
         priv->regs + HIX5I2C_TXR);

 writel_relaxed(I2C_WRITE | I2C_START, priv->regs + HIX5I2C_COM);
 spin_unlock_irqrestore(&priv->lock, flags);
}
