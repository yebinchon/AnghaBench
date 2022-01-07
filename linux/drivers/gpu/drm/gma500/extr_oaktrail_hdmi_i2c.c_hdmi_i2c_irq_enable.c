
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct oaktrail_hdmi_dev {int dummy; } ;


 int HDMI_HICR ;
 int HDMI_INTR_I2C_DONE ;
 int HDMI_INTR_I2C_ERROR ;
 int HDMI_INTR_I2C_FULL ;
 int HDMI_READ (int ) ;
 int HDMI_WRITE (int ,int) ;

__attribute__((used)) static void hdmi_i2c_irq_enable(struct oaktrail_hdmi_dev *hdmi_dev)
{
 u32 temp;

 temp = HDMI_READ(HDMI_HICR);
 temp |= (HDMI_INTR_I2C_ERROR | HDMI_INTR_I2C_FULL | HDMI_INTR_I2C_DONE);
 HDMI_WRITE(HDMI_HICR, temp);
 HDMI_READ(HDMI_HICR);
}
