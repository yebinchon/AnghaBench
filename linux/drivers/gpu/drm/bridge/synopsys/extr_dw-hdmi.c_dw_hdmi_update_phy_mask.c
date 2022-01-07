
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; TYPE_1__* ops; } ;
struct dw_hdmi {int rxsense; int disabled; int force; TYPE_2__ phy; } ;
struct TYPE_3__ {int (* update_hpd ) (struct dw_hdmi*,int ,int ,int ,int ) ;} ;


 int stub1 (struct dw_hdmi*,int ,int ,int ,int ) ;

__attribute__((used)) static void dw_hdmi_update_phy_mask(struct dw_hdmi *hdmi)
{
 if (hdmi->phy.ops->update_hpd)
  hdmi->phy.ops->update_hpd(hdmi, hdmi->phy.data,
       hdmi->force, hdmi->disabled,
       hdmi->rxsense);
}
