
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_hdmi_phy {TYPE_1__* conf; } ;
struct clk_init_data {int ops; int flags; } ;
struct TYPE_2__ {int hdmi_phy_clk_ops; int flags; } ;



__attribute__((used)) static void mtk_hdmi_phy_clk_get_data(struct mtk_hdmi_phy *hdmi_phy,
          struct clk_init_data *clk_init)
{
 clk_init->flags = hdmi_phy->conf->flags;
 clk_init->ops = hdmi_phy->conf->hdmi_phy_clk_ops;
}
