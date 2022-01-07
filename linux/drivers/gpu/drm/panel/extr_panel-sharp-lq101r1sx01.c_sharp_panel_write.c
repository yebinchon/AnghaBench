
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sharp_panel {struct mipi_dsi_device* link1; } ;
struct mipi_dsi_device {int dev; } ;
typedef scalar_t__ ssize_t ;
typedef int payload ;


 int dev_err (int *,char*,scalar_t__,...) ;
 scalar_t__ mipi_dsi_dcs_nop (struct mipi_dsi_device*) ;
 scalar_t__ mipi_dsi_generic_write (struct mipi_dsi_device*,int*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int sharp_panel_write(struct sharp_panel *sharp, u16 offset, u8 value)
{
 u8 payload[3] = { offset >> 8, offset & 0xff, value };
 struct mipi_dsi_device *dsi = sharp->link1;
 ssize_t err;

 err = mipi_dsi_generic_write(dsi, payload, sizeof(payload));
 if (err < 0) {
  dev_err(&dsi->dev, "failed to write %02x to %04x: %zd\n",
   value, offset, err);
  return err;
 }

 err = mipi_dsi_dcs_nop(dsi);
 if (err < 0) {
  dev_err(&dsi->dev, "failed to send DCS nop: %zd\n", err);
  return err;
 }

 usleep_range(10, 20);

 return 0;
}
