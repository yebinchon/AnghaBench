
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_hdmi {int hdmi; int pll; int vdd; int output; } ;
struct host1x_client {int dummy; } ;


 struct tegra_hdmi* host1x_client_to_hdmi (struct host1x_client*) ;
 int regulator_disable (int ) ;
 int tegra_output_exit (int *) ;

__attribute__((used)) static int tegra_hdmi_exit(struct host1x_client *client)
{
 struct tegra_hdmi *hdmi = host1x_client_to_hdmi(client);

 tegra_output_exit(&hdmi->output);

 regulator_disable(hdmi->vdd);
 regulator_disable(hdmi->pll);
 regulator_disable(hdmi->hdmi);

 return 0;
}
