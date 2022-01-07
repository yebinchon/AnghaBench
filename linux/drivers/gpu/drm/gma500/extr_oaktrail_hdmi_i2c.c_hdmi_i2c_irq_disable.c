
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oaktrail_hdmi_dev {int dummy; } ;


 int HDMI_HICR ;
 int HDMI_READ (int ) ;
 int HDMI_WRITE (int ,int) ;

__attribute__((used)) static void hdmi_i2c_irq_disable(struct oaktrail_hdmi_dev *hdmi_dev)
{
 HDMI_WRITE(HDMI_HICR, 0x0);
 HDMI_READ(HDMI_HICR);
}
