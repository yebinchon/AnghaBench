
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct oaktrail_hdmi_dev {struct hdmi_i2c_dev* i2c_dev; } ;
struct i2c_msg {int * buf; } ;
struct hdmi_i2c_dev {int buf_offset; int status; struct i2c_msg* msg; } ;


 scalar_t__ HDMI_HI2CHCR ;
 scalar_t__ HDMI_HI2CRDB0 ;
 scalar_t__ HDMI_HISR ;
 int HDMI_INTR_I2C_FULL ;
 int HDMI_READ (scalar_t__) ;
 int HDMI_WRITE (scalar_t__,int) ;
 int HI2C_READ_CONTINUE ;
 int I2C_READ_DONE ;
 int memcpy (int *,int*,int) ;

__attribute__((used)) static void hdmi_i2c_read(struct oaktrail_hdmi_dev *hdmi_dev)
{
 struct hdmi_i2c_dev *i2c_dev = hdmi_dev->i2c_dev;
 struct i2c_msg *msg = i2c_dev->msg;
 u8 *buf = msg->buf;
 u32 temp;
 int i, offset;

 offset = i2c_dev->buf_offset;
 for (i = 0; i < 0x10; i++) {
  temp = HDMI_READ(HDMI_HI2CRDB0 + (i * 4));
  memcpy(buf + (offset + i * 4), &temp, 4);
 }
 i2c_dev->buf_offset += (0x10 * 4);


 temp = HDMI_READ(HDMI_HISR);
 HDMI_WRITE(HDMI_HISR, temp | HDMI_INTR_I2C_FULL);
 HDMI_READ(HDMI_HISR);


 temp = HDMI_READ(HDMI_HI2CHCR);
 HDMI_WRITE(HDMI_HI2CHCR, temp | HI2C_READ_CONTINUE);
 HDMI_READ(HDMI_HI2CHCR);

 i2c_dev->status = I2C_READ_DONE;
 return;
}
