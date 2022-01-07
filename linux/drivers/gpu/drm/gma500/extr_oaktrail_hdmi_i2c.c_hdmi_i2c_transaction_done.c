
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct oaktrail_hdmi_dev {struct hdmi_i2c_dev* i2c_dev; } ;
struct hdmi_i2c_dev {int status; } ;


 int HDMI_HI2CHCR ;
 int HDMI_HISR ;
 int HDMI_INTR_I2C_DONE ;
 int HDMI_READ (int ) ;
 int HDMI_WRITE (int ,int) ;
 int HI2C_ENABLE_TRANSACTION ;
 int I2C_TRANSACTION_DONE ;

__attribute__((used)) static void hdmi_i2c_transaction_done(struct oaktrail_hdmi_dev *hdmi_dev)
{
 struct hdmi_i2c_dev *i2c_dev = hdmi_dev->i2c_dev;
 u32 temp;


 temp = HDMI_READ(HDMI_HISR);
 HDMI_WRITE(HDMI_HISR, temp | HDMI_INTR_I2C_DONE);
 HDMI_READ(HDMI_HISR);


 temp = HDMI_READ(HDMI_HI2CHCR);
 HDMI_WRITE(HDMI_HI2CHCR, temp & ~HI2C_ENABLE_TRANSACTION);
 HDMI_READ(HDMI_HI2CHCR);

 i2c_dev->status = I2C_TRANSACTION_DONE;
 return;
}
