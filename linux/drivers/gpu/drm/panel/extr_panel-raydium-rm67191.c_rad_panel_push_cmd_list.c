
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipi_dsi_device {int dummy; } ;
struct cmd_set_entry {int param; int cmd; } ;
typedef int buffer ;


 size_t ARRAY_SIZE (struct cmd_set_entry*) ;
 struct cmd_set_entry* manufacturer_cmd_set ;
 int mipi_dsi_generic_write (struct mipi_dsi_device*,int **,int) ;

__attribute__((used)) static int rad_panel_push_cmd_list(struct mipi_dsi_device *dsi)
{
 size_t i;
 size_t count = ARRAY_SIZE(manufacturer_cmd_set);
 int ret = 0;

 for (i = 0; i < count; i++) {
  const struct cmd_set_entry *entry = &manufacturer_cmd_set[i];
  u8 buffer[2] = { entry->cmd, entry->param };

  ret = mipi_dsi_generic_write(dsi, &buffer, sizeof(buffer));
  if (ret < 0)
   return ret;
 }

 return ret;
}
