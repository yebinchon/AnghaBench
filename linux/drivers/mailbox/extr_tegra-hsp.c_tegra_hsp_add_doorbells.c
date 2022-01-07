
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_hsp_db_map {int index; int master; scalar_t__ name; } ;
struct tegra_hsp_channel {int dummy; } ;
struct tegra_hsp {TYPE_1__* soc; } ;
struct TYPE_2__ {struct tegra_hsp_db_map* map; } ;


 scalar_t__ IS_ERR (struct tegra_hsp_channel*) ;
 int PTR_ERR (struct tegra_hsp_channel*) ;
 struct tegra_hsp_channel* tegra_hsp_doorbell_create (struct tegra_hsp*,scalar_t__,int ,int ) ;

__attribute__((used)) static int tegra_hsp_add_doorbells(struct tegra_hsp *hsp)
{
 const struct tegra_hsp_db_map *map = hsp->soc->map;
 struct tegra_hsp_channel *channel;

 while (map->name) {
  channel = tegra_hsp_doorbell_create(hsp, map->name,
          map->master, map->index);
  if (IS_ERR(channel))
   return PTR_ERR(channel);

  map++;
 }

 return 0;
}
