
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panel_init_cmd {scalar_t__ len; int data; } ;
struct innolux_panel {int prepared; int supplies; TYPE_1__* desc; int enable_gpio; int link; } ;
struct drm_panel {int dev; } ;
struct TYPE_2__ {int num_supplies; struct panel_init_cmd* init_cmds; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int mipi_dsi_dcs_exit_sleep_mode (int ) ;
 int mipi_dsi_dcs_nop (int ) ;
 int mipi_dsi_dcs_set_display_on (int ) ;
 int mipi_dsi_generic_write (int ,int ,scalar_t__) ;
 int msleep (int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 struct innolux_panel* to_innolux_panel (struct drm_panel*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int innolux_panel_prepare(struct drm_panel *panel)
{
 struct innolux_panel *innolux = to_innolux_panel(panel);
 int err;

 if (innolux->prepared)
  return 0;

 gpiod_set_value_cansleep(innolux->enable_gpio, 0);

 err = regulator_bulk_enable(innolux->desc->num_supplies,
        innolux->supplies);
 if (err < 0)
  return err;


 usleep_range(20000, 21000);

 gpiod_set_value_cansleep(innolux->enable_gpio, 1);


 usleep_range(20000, 21000);

 if (innolux->desc->init_cmds) {
  const struct panel_init_cmd *cmds =
     innolux->desc->init_cmds;
  unsigned int i;

  for (i = 0; cmds[i].len != 0; i++) {
   const struct panel_init_cmd *cmd = &cmds[i];

   err = mipi_dsi_generic_write(innolux->link, cmd->data,
           cmd->len);
   if (err < 0) {
    dev_err(panel->dev,
     "failed to write command %u\n", i);
    goto poweroff;
   }






   err = mipi_dsi_dcs_nop(innolux->link);
   if (err < 0) {
    dev_err(panel->dev,
     "failed to send DCS nop: %d\n", err);
    goto poweroff;
   }
  }
 }

 err = mipi_dsi_dcs_exit_sleep_mode(innolux->link);
 if (err < 0) {
  DRM_DEV_ERROR(panel->dev, "failed to exit sleep mode: %d\n",
         err);
  goto poweroff;
 }


 msleep(120);

 err = mipi_dsi_dcs_set_display_on(innolux->link);
 if (err < 0) {
  DRM_DEV_ERROR(panel->dev, "failed to set display on: %d\n",
         err);
  goto poweroff;
 }


 usleep_range(5000, 6000);

 innolux->prepared = 1;

 return 0;

poweroff:
 gpiod_set_value_cansleep(innolux->enable_gpio, 0);
 regulator_bulk_disable(innolux->desc->num_supplies, innolux->supplies);

 return err;
}
