
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_output {int cec; scalar_t__ ddc; scalar_t__ edid; TYPE_2__* panel; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* get_modes ) (TYPE_2__*) ;} ;


 int GFP_KERNEL ;
 int cec_notifier_set_phys_addr_from_edid (int ,struct edid*) ;
 struct tegra_output* connector_to_output (struct drm_connector*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,scalar_t__) ;
 int kfree (struct edid*) ;
 struct edid* kmemdup (scalar_t__,int,int ) ;
 int stub1 (TYPE_2__*) ;

int tegra_output_connector_get_modes(struct drm_connector *connector)
{
 struct tegra_output *output = connector_to_output(connector);
 struct edid *edid = ((void*)0);
 int err = 0;





 if (output->panel) {
  err = output->panel->funcs->get_modes(output->panel);
  if (err > 0)
   return err;
 }

 if (output->edid)
  edid = kmemdup(output->edid, sizeof(*edid), GFP_KERNEL);
 else if (output->ddc)
  edid = drm_get_edid(connector, output->ddc);

 cec_notifier_set_phys_addr_from_edid(output->cec, edid);
 drm_connector_update_edid_property(connector, edid);

 if (edid) {
  err = drm_add_edid_modes(connector, edid);
  kfree(edid);
 }

 return err;
}
