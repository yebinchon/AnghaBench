
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dsi {int output; } ;
struct host1x_client {int dummy; } ;


 struct tegra_dsi* host1x_client_to_dsi (struct host1x_client*) ;
 int tegra_output_exit (int *) ;

__attribute__((used)) static int tegra_dsi_exit(struct host1x_client *client)
{
 struct tegra_dsi *dsi = host1x_client_to_dsi(client);

 tegra_output_exit(&dsi->output);

 return 0;
}
