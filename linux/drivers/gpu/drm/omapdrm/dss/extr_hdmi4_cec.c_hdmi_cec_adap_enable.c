
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hdmi_core_data {TYPE_1__* wp; int base; } ;
struct cec_adapter {int name; } ;
struct TYPE_4__ {int base; } ;


 int EIO ;
 scalar_t__ FLD_GET (int,int,int) ;
 int FLD_MOD (int,int,int,int) ;
 int HDMI_CEC_INT_ENABLE_0 ;
 int HDMI_CEC_INT_ENABLE_1 ;
 int HDMI_CEC_INT_STATUS_0 ;
 int HDMI_CEC_INT_STATUS_1 ;
 int HDMI_CEC_SETUP ;
 int HDMI_CORE_SYS_INTR_UNMASK4 ;
 int HDMI_IRQ_CORE ;
 int HDMI_WP_CLK ;
 int REG_FLD_MOD (int ,int ,int,int,int) ;
 struct hdmi_core_data* cec_get_drvdata (struct cec_adapter*) ;
 int hdmi4_core_disable (struct hdmi_core_data*) ;
 int hdmi4_core_enable (struct hdmi_core_data*) ;
 int hdmi_cec_clear_rx_fifo (struct cec_adapter*) ;
 int hdmi_cec_clear_tx_fifo (struct cec_adapter*) ;
 int hdmi_read_reg (int ,int ) ;
 int hdmi_wp_clear_irqenable (TYPE_1__*,int ) ;
 int hdmi_wp_set_irqenable (TYPE_1__*,int ) ;
 int hdmi_wp_set_irqstatus (TYPE_1__*,int ) ;
 int hdmi_write_reg (int ,int ,int) ;
 int msleep (int) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int hdmi_cec_adap_enable(struct cec_adapter *adap, bool enable)
{
 struct hdmi_core_data *core = cec_get_drvdata(adap);
 int temp, err;

 if (!enable) {
  hdmi_write_reg(core->base, HDMI_CEC_INT_ENABLE_0, 0);
  hdmi_write_reg(core->base, HDMI_CEC_INT_ENABLE_1, 0);
  REG_FLD_MOD(core->base, HDMI_CORE_SYS_INTR_UNMASK4, 0, 3, 3);
  hdmi_wp_clear_irqenable(core->wp, HDMI_IRQ_CORE);
  hdmi_wp_set_irqstatus(core->wp, HDMI_IRQ_CORE);
  REG_FLD_MOD(core->wp->base, HDMI_WP_CLK, 0, 5, 0);
  hdmi4_core_disable(core);
  return 0;
 }
 err = hdmi4_core_enable(core);
 if (err)
  return err;





 REG_FLD_MOD(core->wp->base, HDMI_WP_CLK, 0x18, 5, 0);


 if (!hdmi_cec_clear_tx_fifo(adap)) {
  pr_err("cec-%s: could not clear TX FIFO\n", adap->name);
  err = -EIO;
  goto err_disable_clk;
 }


 if (!hdmi_cec_clear_rx_fifo(adap)) {
  pr_err("cec-%s: could not clear RX FIFO\n", adap->name);
  err = -EIO;
  goto err_disable_clk;
 }


 hdmi_write_reg(core->base, HDMI_CEC_INT_STATUS_1,
  hdmi_read_reg(core->base, HDMI_CEC_INT_STATUS_1));
 hdmi_write_reg(core->base, HDMI_CEC_INT_STATUS_0,
  hdmi_read_reg(core->base, HDMI_CEC_INT_STATUS_0));


 hdmi_wp_set_irqenable(core->wp, HDMI_IRQ_CORE);

 REG_FLD_MOD(core->base, HDMI_CORE_SYS_INTR_UNMASK4, 0x1, 3, 3);





 hdmi_write_reg(core->base, HDMI_CEC_INT_ENABLE_0, 0x22);




 hdmi_write_reg(core->base, HDMI_CEC_INT_ENABLE_1, 0x02);


 hdmi_write_reg(core->base, HDMI_CEC_SETUP, 0x03);
 msleep(20);
 hdmi_write_reg(core->base, HDMI_CEC_SETUP, 0x04);

 temp = hdmi_read_reg(core->base, HDMI_CEC_SETUP);
 if (FLD_GET(temp, 4, 4) != 0) {
  temp = FLD_MOD(temp, 0, 4, 4);
  hdmi_write_reg(core->base, HDMI_CEC_SETUP, temp);






  temp = hdmi_read_reg(core->base, HDMI_CEC_INT_STATUS_1);
  temp = FLD_MOD(0x0, 0x5, 2, 0);
  hdmi_write_reg(core->base, HDMI_CEC_INT_STATUS_1, temp);
 }
 return 0;

err_disable_clk:
 REG_FLD_MOD(core->wp->base, HDMI_WP_CLK, 0, 5, 0);
 hdmi4_core_disable(core);

 return err;
}
