
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi_cec {int tx_done; int rx_done; int rx_msg; int tx_status; } ;
struct cec_adapter {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct dw_hdmi_cec* cec_get_drvdata (struct cec_adapter*) ;
 int cec_received_msg (struct cec_adapter*,int *) ;
 int cec_transmit_attempt_done (struct cec_adapter*,int ) ;
 int smp_rmb () ;

__attribute__((used)) static irqreturn_t dw_hdmi_cec_thread(int irq, void *data)
{
 struct cec_adapter *adap = data;
 struct dw_hdmi_cec *cec = cec_get_drvdata(adap);

 if (cec->tx_done) {
  cec->tx_done = 0;
  cec_transmit_attempt_done(adap, cec->tx_status);
 }
 if (cec->rx_done) {
  cec->rx_done = 0;
  smp_rmb();
  cec_received_msg(adap, &cec->rx_msg);
 }
 return IRQ_HANDLED;
}
