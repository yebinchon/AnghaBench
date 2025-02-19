
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct hdmi_wp_data {int base; } ;
struct hdmi_core_data {int adap; struct hdmi_wp_data* wp; } ;


 int CEC_CAP_LOG_ADDRS ;
 int CEC_CAP_PASSTHROUGH ;
 int CEC_CAP_RC ;
 int CEC_CAP_TRANSMIT ;
 int CEC_MAX_LOG_ADDRS ;
 int HDMI_WP_CLK ;
 int PTR_ERR_OR_ZERO (int ) ;
 int REG_FLD_MOD (int ,int ,int ,int,int ) ;
 int cec_allocate_adapter (int *,struct hdmi_core_data*,char*,int const,int ) ;
 int cec_delete_adapter (int ) ;
 int cec_register_adapter (int ,int *) ;
 int hdmi_cec_adap_ops ;

int hdmi4_cec_init(struct platform_device *pdev, struct hdmi_core_data *core,
    struct hdmi_wp_data *wp)
{
 const u32 caps = CEC_CAP_TRANSMIT | CEC_CAP_LOG_ADDRS |
    CEC_CAP_PASSTHROUGH | CEC_CAP_RC;
 int ret;

 core->adap = cec_allocate_adapter(&hdmi_cec_adap_ops, core,
  "omap4", caps, CEC_MAX_LOG_ADDRS);
 ret = PTR_ERR_OR_ZERO(core->adap);
 if (ret < 0)
  return ret;
 core->wp = wp;


 REG_FLD_MOD(core->wp->base, HDMI_WP_CLK, 0, 5, 0);

 ret = cec_register_adapter(core->adap, &pdev->dev);
 if (ret < 0) {
  cec_delete_adapter(core->adap);
  return ret;
 }
 return 0;
}
