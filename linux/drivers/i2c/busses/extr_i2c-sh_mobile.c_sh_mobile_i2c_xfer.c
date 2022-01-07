
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {int send_stop; int stop_after_dma; int sr; scalar_t__ dma_direction; int dev; int msg; int dma_buf; int wait; } ;
struct i2c_msg {int flags; } ;
struct i2c_adapter {int timeout; } ;


 scalar_t__ DMA_NONE ;
 int ETIMEDOUT ;
 int I2C_M_STOP ;
 int ICCR ;
 int ICCR_SCP ;
 int ICSR_TACK ;
 int OP_START ;
 int SW_DONE ;
 int dev_err (int ,char*) ;
 struct sh_mobile_i2c_data* i2c_get_adapdata (struct i2c_adapter*) ;
 int i2c_op (struct sh_mobile_i2c_data*,int ) ;
 int i2c_put_dma_safe_msg_buf (int ,int ,int) ;
 int iic_wr (struct sh_mobile_i2c_data*,int ,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int poll_busy (struct sh_mobile_i2c_data*) ;
 int poll_dte (struct sh_mobile_i2c_data*) ;
 int sh_mobile_i2c_cleanup_dma (struct sh_mobile_i2c_data*) ;
 int start_ch (struct sh_mobile_i2c_data*,struct i2c_msg*,int) ;
 long wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int sh_mobile_i2c_xfer(struct i2c_adapter *adapter,
         struct i2c_msg *msgs,
         int num)
{
 struct sh_mobile_i2c_data *pd = i2c_get_adapdata(adapter);
 struct i2c_msg *msg;
 int err = 0;
 int i;
 long timeout;


 pm_runtime_get_sync(pd->dev);


 for (i = 0; i < num; i++) {
  bool do_start = pd->send_stop || !i;
  msg = &msgs[i];
  pd->send_stop = i == num - 1 || msg->flags & I2C_M_STOP;
  pd->stop_after_dma = 0;

  start_ch(pd, msg, do_start);

  if (do_start)
   i2c_op(pd, OP_START);


  timeout = wait_event_timeout(pd->wait,
           pd->sr & (ICSR_TACK | SW_DONE),
           adapter->timeout);


  i2c_put_dma_safe_msg_buf(pd->dma_buf, pd->msg, pd->stop_after_dma);

  if (!timeout) {
   dev_err(pd->dev, "Transfer request timed out\n");
   if (pd->dma_direction != DMA_NONE)
    sh_mobile_i2c_cleanup_dma(pd);

   err = -ETIMEDOUT;
   break;
  }

  if (pd->send_stop)
   err = poll_busy(pd);
  else
   err = poll_dte(pd);
  if (err < 0)
   break;
 }


 iic_wr(pd, ICCR, ICCR_SCP);


 pm_runtime_put_sync(pd->dev);

 return err ?: num;
}
