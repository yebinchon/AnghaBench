
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; TYPE_1__* ops; } ;
struct dw_hdmi {TYPE_2__ phy; } ;
struct TYPE_3__ {int (* setup_hpd ) (struct dw_hdmi*,int ) ;} ;


 int dw_hdmi_i2c_init (struct dw_hdmi*) ;
 int initialize_hdmi_ih_mutes (struct dw_hdmi*) ;
 int stub1 (struct dw_hdmi*,int ) ;

__attribute__((used)) static void dw_hdmi_init_hw(struct dw_hdmi *hdmi)
{
 initialize_hdmi_ih_mutes(hdmi);






 dw_hdmi_i2c_init(hdmi);

 if (hdmi->phy.ops->setup_hpd)
  hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
}
