
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_hdmi_cec {int hdmi; TYPE_1__* ops; int adap; } ;
struct cec_adapter {int dummy; } ;
struct TYPE_2__ {int (* enable ) (int ) ;int (* disable ) (int ) ;} ;


 int CEC_LOG_ADDR_INVALID ;
 unsigned int CEC_STAT_DONE ;
 unsigned int CEC_STAT_EOM ;
 unsigned int CEC_STAT_ERROR_INIT ;
 unsigned int CEC_STAT_NACK ;
 int HDMI_CEC_CTRL ;
 int HDMI_CEC_LOCK ;
 int HDMI_CEC_MASK ;
 int HDMI_CEC_POLARITY ;
 int HDMI_IH_CEC_STAT0 ;
 int HDMI_IH_MUTE_CEC_STAT0 ;
 struct dw_hdmi_cec* cec_get_drvdata (struct cec_adapter*) ;
 int dw_hdmi_cec_log_addr (int ,int ) ;
 int dw_hdmi_write (struct dw_hdmi_cec*,unsigned int,int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int dw_hdmi_cec_enable(struct cec_adapter *adap, bool enable)
{
 struct dw_hdmi_cec *cec = cec_get_drvdata(adap);

 if (!enable) {
  dw_hdmi_write(cec, ~0, HDMI_CEC_MASK);
  dw_hdmi_write(cec, ~0, HDMI_IH_MUTE_CEC_STAT0);
  dw_hdmi_write(cec, 0, HDMI_CEC_POLARITY);

  cec->ops->disable(cec->hdmi);
 } else {
  unsigned int irqs;

  dw_hdmi_write(cec, 0, HDMI_CEC_CTRL);
  dw_hdmi_write(cec, ~0, HDMI_IH_CEC_STAT0);
  dw_hdmi_write(cec, 0, HDMI_CEC_LOCK);

  dw_hdmi_cec_log_addr(cec->adap, CEC_LOG_ADDR_INVALID);

  cec->ops->enable(cec->hdmi);

  irqs = CEC_STAT_ERROR_INIT | CEC_STAT_NACK | CEC_STAT_EOM |
         CEC_STAT_DONE;
  dw_hdmi_write(cec, irqs, HDMI_CEC_POLARITY);
  dw_hdmi_write(cec, ~irqs, HDMI_CEC_MASK);
  dw_hdmi_write(cec, ~irqs, HDMI_IH_MUTE_CEC_STAT0);
 }
 return 0;
}
