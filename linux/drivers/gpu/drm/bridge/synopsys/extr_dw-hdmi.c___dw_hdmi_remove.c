
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_hdmi {int ddc; TYPE_1__* i2c; scalar_t__ cec_clk; scalar_t__ isfr_clk; scalar_t__ iahb_clk; scalar_t__ cec; scalar_t__ audio; } ;
struct TYPE_2__ {int adap; } ;


 int HDMI_IH_MUTE_PHY_STAT0 ;
 int IS_ERR (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 int hdmi_writeb (struct dw_hdmi*,int ,int ) ;
 int i2c_del_adapter (int *) ;
 int i2c_put_adapter (int ) ;
 int platform_device_unregister (scalar_t__) ;

__attribute__((used)) static void __dw_hdmi_remove(struct dw_hdmi *hdmi)
{
 if (hdmi->audio && !IS_ERR(hdmi->audio))
  platform_device_unregister(hdmi->audio);
 if (!IS_ERR(hdmi->cec))
  platform_device_unregister(hdmi->cec);


 hdmi_writeb(hdmi, ~0, HDMI_IH_MUTE_PHY_STAT0);

 clk_disable_unprepare(hdmi->iahb_clk);
 clk_disable_unprepare(hdmi->isfr_clk);
 if (hdmi->cec_clk)
  clk_disable_unprepare(hdmi->cec_clk);

 if (hdmi->i2c)
  i2c_del_adapter(&hdmi->i2c->adap);
 else
  i2c_put_adapter(hdmi->ddc);
}
