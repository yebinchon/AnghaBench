
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {scalar_t__ devtype; int flags; int msgs_left; scalar_t__ dma_direction; int wait; struct i2c_msg* msg; int rstc; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int timeout; } ;
struct device {int dummy; } ;


 scalar_t__ DMA_NONE ;
 int EAGAIN ;
 int ENXIO ;
 int ETIMEDOUT ;
 scalar_t__ I2C_RCAR_GEN3 ;
 int ID_ARBLOST ;
 int ID_DONE ;
 int ID_FIRST_MSG ;
 int ID_NACK ;
 int ID_P_MASK ;
 int ID_P_NO_RXDMA ;
 int IS_ERR (int ) ;
 int dev_err (struct device*,char*,int,int) ;
 struct rcar_i2c_priv* i2c_get_adapdata (struct i2c_adapter*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int rcar_i2c_bus_barrier (struct rcar_i2c_priv*) ;
 int rcar_i2c_cleanup_dma (struct rcar_i2c_priv*) ;
 int rcar_i2c_do_reset (struct rcar_i2c_priv*) ;
 int rcar_i2c_init (struct rcar_i2c_priv*) ;
 int rcar_i2c_prepare_msg (struct rcar_i2c_priv*) ;
 struct device* rcar_i2c_priv_to_dev (struct rcar_i2c_priv*) ;
 int rcar_i2c_request_dma (struct rcar_i2c_priv*,struct i2c_msg*) ;
 long wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int rcar_i2c_master_xfer(struct i2c_adapter *adap,
    struct i2c_msg *msgs,
    int num)
{
 struct rcar_i2c_priv *priv = i2c_get_adapdata(adap);
 struct device *dev = rcar_i2c_priv_to_dev(priv);
 int i, ret;
 long time_left;

 pm_runtime_get_sync(dev);


 ret = rcar_i2c_bus_barrier(priv);
 if (ret < 0)
  goto out;


 if (priv->devtype == I2C_RCAR_GEN3) {
  priv->flags |= ID_P_NO_RXDMA;
  if (!IS_ERR(priv->rstc)) {
   ret = rcar_i2c_do_reset(priv);
   if (ret == 0)
    priv->flags &= ~ID_P_NO_RXDMA;
  }
 }

 rcar_i2c_init(priv);

 for (i = 0; i < num; i++)
  rcar_i2c_request_dma(priv, msgs + i);


 priv->msg = msgs;
 priv->msgs_left = num;
 priv->flags = (priv->flags & ID_P_MASK) | ID_FIRST_MSG;
 rcar_i2c_prepare_msg(priv);

 time_left = wait_event_timeout(priv->wait, priv->flags & ID_DONE,
         num * adap->timeout);


 if (priv->dma_direction != DMA_NONE)
  rcar_i2c_cleanup_dma(priv);

 if (!time_left) {
  rcar_i2c_init(priv);
  ret = -ETIMEDOUT;
 } else if (priv->flags & ID_NACK) {
  ret = -ENXIO;
 } else if (priv->flags & ID_ARBLOST) {
  ret = -EAGAIN;
 } else {
  ret = num - priv->msgs_left;
 }
out:
 pm_runtime_put(dev);

 if (ret < 0 && ret != -ENXIO)
  dev_err(dev, "error %d : %x\n", ret, priv->flags);

 return ret;
}
