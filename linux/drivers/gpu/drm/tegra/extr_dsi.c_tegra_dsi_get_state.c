
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_dsi_state {int dummy; } ;
struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ connector; } ;
struct tegra_dsi {TYPE_2__ output; } ;


 struct tegra_dsi_state* to_dsi_state (int ) ;

__attribute__((used)) static struct tegra_dsi_state *tegra_dsi_get_state(struct tegra_dsi *dsi)
{
 return to_dsi_state(dsi->output.connector.state);
}
