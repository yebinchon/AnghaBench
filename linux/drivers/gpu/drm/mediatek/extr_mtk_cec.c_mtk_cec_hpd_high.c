
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cec {scalar_t__ regs; } ;
struct device {int dummy; } ;


 unsigned int HDMI_HTPLG ;
 unsigned int HDMI_PORD ;
 scalar_t__ RX_EVENT ;
 struct mtk_cec* dev_get_drvdata (struct device*) ;
 unsigned int readl (scalar_t__) ;

bool mtk_cec_hpd_high(struct device *dev)
{
 struct mtk_cec *cec = dev_get_drvdata(dev);
 unsigned int status;

 status = readl(cec->regs + RX_EVENT);

 return (status & (HDMI_PORD | HDMI_HTPLG)) == (HDMI_PORD | HDMI_HTPLG);
}
