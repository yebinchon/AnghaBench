
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct tegra_dc {int pipe; TYPE_2__* dev; TYPE_1__* soc; } ;
struct device_link {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int driver; } ;
struct TYPE_5__ {scalar_t__ coupled_pm; } ;


 int DL_FLAG_AUTOREMOVE_CONSUMER ;
 int DL_FLAG_PM_RUNTIME ;
 int EINVAL ;
 int EPROBE_DEFER ;
 int dev_dbg (TYPE_2__*,char*,int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_name (struct device*) ;
 struct device_link* device_link_add (TYPE_2__*,struct device*,int) ;
 struct device* driver_find_device (int ,int *,int *,int ) ;
 int tegra_dc_match_by_pipe ;

__attribute__((used)) static int tegra_dc_couple(struct tegra_dc *dc)
{





 if (dc->soc->coupled_pm && dc->pipe == 1) {
  u32 flags = DL_FLAG_PM_RUNTIME | DL_FLAG_AUTOREMOVE_CONSUMER;
  struct device_link *link;
  struct device *partner;

  partner = driver_find_device(dc->dev->driver, ((void*)0), ((void*)0),
          tegra_dc_match_by_pipe);
  if (!partner)
   return -EPROBE_DEFER;

  link = device_link_add(dc->dev, partner, flags);
  if (!link) {
   dev_err(dc->dev, "failed to link controllers\n");
   return -EINVAL;
  }

  dev_dbg(dc->dev, "coupled to %s\n", dev_name(partner));
 }

 return 0;
}
