
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct oaktrail_hdmi_dev {struct hdmi_i2c_dev* i2c_dev; } ;
struct i2c_msg {int len; } ;
struct i2c_adapter {int dummy; } ;
struct hdmi_i2c_dev {scalar_t__ status; int complete; scalar_t__ buf_offset; struct i2c_msg* msg; } ;


 int HDMI_HI2CHCR ;
 int HDMI_READ (int ) ;
 int HDMI_WRITE (int ,int) ;
 int HI2C_EDID_READ ;
 int HI2C_ENABLE_TRANSACTION ;
 int HZ ;
 scalar_t__ I2C_STAT_INIT ;
 scalar_t__ I2C_TRANSACTION_DONE ;
 struct oaktrail_hdmi_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int reinit_completion (int *) ;
 int wait_for_completion_interruptible_timeout (int *,int) ;

__attribute__((used)) static int xfer_read(struct i2c_adapter *adap, struct i2c_msg *pmsg)
{
 struct oaktrail_hdmi_dev *hdmi_dev = i2c_get_adapdata(adap);
 struct hdmi_i2c_dev *i2c_dev = hdmi_dev->i2c_dev;
 u32 temp;

 i2c_dev->status = I2C_STAT_INIT;
 i2c_dev->msg = pmsg;
 i2c_dev->buf_offset = 0;
 reinit_completion(&i2c_dev->complete);


 temp = ((pmsg->len) << 20) | HI2C_EDID_READ | HI2C_ENABLE_TRANSACTION;
 HDMI_WRITE(HDMI_HI2CHCR, temp);
 HDMI_READ(HDMI_HI2CHCR);

 while (i2c_dev->status != I2C_TRANSACTION_DONE)
  wait_for_completion_interruptible_timeout(&i2c_dev->complete,
        10 * HZ);

 return 0;
}
