
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int flags; int len; int * buf; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct gpu_i2c_dev {int dev; scalar_t__ regs; } ;


 scalar_t__ I2C_MST_ADDR ;
 int I2C_M_RD ;
 int dev_err (int ,char*,int) ;
 int gpu_i2c_read (struct gpu_i2c_dev*,int *,int) ;
 int gpu_i2c_start (struct gpu_i2c_dev*) ;
 int gpu_i2c_stop (struct gpu_i2c_dev*) ;
 int gpu_i2c_write (struct gpu_i2c_dev*,int ) ;
 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 struct gpu_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int gpu_i2c_master_xfer(struct i2c_adapter *adap,
          struct i2c_msg *msgs, int num)
{
 struct gpu_i2c_dev *i2cd = i2c_get_adapdata(adap);
 int status, status2;
 bool send_stop = 1;
 int i, j;





 pm_runtime_get_sync(i2cd->dev);
 for (i = 0; i < num; i++) {
  if (msgs[i].flags & I2C_M_RD) {

   writel(msgs[i].addr, i2cd->regs + I2C_MST_ADDR);

   status = gpu_i2c_read(i2cd, msgs[i].buf, msgs[i].len);
   if (status < 0)
    goto exit;
  } else {
   u8 addr = i2c_8bit_addr_from_msg(msgs + i);

   status = gpu_i2c_start(i2cd);
   if (status < 0) {
    if (i == 0)
     send_stop = 0;
    goto exit;
   }

   status = gpu_i2c_write(i2cd, addr);
   if (status < 0)
    goto exit;

   for (j = 0; j < msgs[i].len; j++) {
    status = gpu_i2c_write(i2cd, msgs[i].buf[j]);
    if (status < 0)
     goto exit;
   }
  }
 }
 send_stop = 0;
 status = gpu_i2c_stop(i2cd);
 if (status < 0)
  goto exit;

 status = i;
exit:
 if (send_stop) {
  status2 = gpu_i2c_stop(i2cd);
  if (status2 < 0)
   dev_err(i2cd->dev, "i2c stop failed %d\n", status2);
 }
 pm_runtime_mark_last_busy(i2cd->dev);
 pm_runtime_put_autosuspend(i2cd->dev);
 return status;
}
