
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_fi2c_priv {int error; int flags; scalar_t__ membase; int lock; scalar_t__ enabled_irqs; int comp; int buf; int len; } ;
struct i2c_msg {int flags; int addr; int buf; int len; } ;
struct i2c_adapter {int dev; int timeout; } ;


 int ETIMEDOUT ;
 int I2C_M_RD ;
 int U32_MAX ;
 scalar_t__ UNIPHIER_FI2C_CR ;
 int UNIPHIER_FI2C_CR_MST ;
 int UNIPHIER_FI2C_CR_STA ;
 int UNIPHIER_FI2C_DEFER_STOP_COMP ;
 scalar_t__ UNIPHIER_FI2C_INT_FAULTS ;
 scalar_t__ UNIPHIER_FI2C_RST ;
 int UNIPHIER_FI2C_RST_RBRST ;
 int UNIPHIER_FI2C_RST_TBRST ;
 scalar_t__ UNIPHIER_FI2C_SR ;
 int UNIPHIER_FI2C_SR_BB ;
 int UNIPHIER_FI2C_SR_STS ;
 int UNIPHIER_FI2C_STOP ;
 int dev_err (int *,char*) ;
 struct uniphier_fi2c_priv* i2c_get_adapdata (struct i2c_adapter*) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uniphier_fi2c_clear_irqs (struct uniphier_fi2c_priv*,int ) ;
 int uniphier_fi2c_recover (struct uniphier_fi2c_priv*) ;
 int uniphier_fi2c_rx_init (struct uniphier_fi2c_priv*,int ) ;
 int uniphier_fi2c_set_irqs (struct uniphier_fi2c_priv*) ;
 int uniphier_fi2c_tx_init (struct uniphier_fi2c_priv*,int ,int) ;
 scalar_t__ unlikely (int) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int uniphier_fi2c_master_xfer_one(struct i2c_adapter *adap,
      struct i2c_msg *msg, bool repeat,
      bool stop)
{
 struct uniphier_fi2c_priv *priv = i2c_get_adapdata(adap);
 bool is_read = msg->flags & I2C_M_RD;
 unsigned long time_left, flags;

 priv->len = msg->len;
 priv->buf = msg->buf;
 priv->enabled_irqs = UNIPHIER_FI2C_INT_FAULTS;
 priv->error = 0;
 priv->flags = 0;

 if (stop)
  priv->flags |= UNIPHIER_FI2C_STOP;

 reinit_completion(&priv->comp);
 uniphier_fi2c_clear_irqs(priv, U32_MAX);
 writel(UNIPHIER_FI2C_RST_TBRST | UNIPHIER_FI2C_RST_RBRST,
        priv->membase + UNIPHIER_FI2C_RST);

 spin_lock_irqsave(&priv->lock, flags);

 if (is_read)
  uniphier_fi2c_rx_init(priv, msg->addr);
 else
  uniphier_fi2c_tx_init(priv, msg->addr, repeat);






 if (!repeat)
  writel(UNIPHIER_FI2C_CR_MST | UNIPHIER_FI2C_CR_STA,
         priv->membase + UNIPHIER_FI2C_CR);

 spin_unlock_irqrestore(&priv->lock, flags);

 time_left = wait_for_completion_timeout(&priv->comp, adap->timeout);

 spin_lock_irqsave(&priv->lock, flags);
 priv->enabled_irqs = 0;
 uniphier_fi2c_set_irqs(priv);
 spin_unlock_irqrestore(&priv->lock, flags);

 if (!time_left) {
  dev_err(&adap->dev, "transaction timeout.\n");
  uniphier_fi2c_recover(priv);
  return -ETIMEDOUT;
 }

 if (unlikely(priv->flags & UNIPHIER_FI2C_DEFER_STOP_COMP)) {
  u32 status;
  int ret;

  ret = readl_poll_timeout(priv->membase + UNIPHIER_FI2C_SR,
      status,
      (status & UNIPHIER_FI2C_SR_STS) &&
      !(status & UNIPHIER_FI2C_SR_BB),
      1, 20);
  if (ret) {
   dev_err(&adap->dev,
    "stop condition was not completed.\n");
   uniphier_fi2c_recover(priv);
   return ret;
  }
 }

 return priv->error;
}
