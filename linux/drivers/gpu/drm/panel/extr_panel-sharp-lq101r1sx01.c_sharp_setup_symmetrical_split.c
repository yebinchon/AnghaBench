
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dev; } ;
struct drm_display_mode {int hdisplay; scalar_t__ vdisplay; } ;


 int dev_err (int *,char*,int) ;
 int mipi_dsi_dcs_set_column_address (struct mipi_dsi_device*,int,int) ;
 int mipi_dsi_dcs_set_page_address (struct mipi_dsi_device*,int ,scalar_t__) ;

__attribute__((used)) static int sharp_setup_symmetrical_split(struct mipi_dsi_device *left,
      struct mipi_dsi_device *right,
      const struct drm_display_mode *mode)
{
 int err;

 err = mipi_dsi_dcs_set_column_address(left, 0, mode->hdisplay / 2 - 1);
 if (err < 0) {
  dev_err(&left->dev, "failed to set column address: %d\n", err);
  return err;
 }

 err = mipi_dsi_dcs_set_page_address(left, 0, mode->vdisplay - 1);
 if (err < 0) {
  dev_err(&left->dev, "failed to set page address: %d\n", err);
  return err;
 }

 err = mipi_dsi_dcs_set_column_address(right, mode->hdisplay / 2,
           mode->hdisplay - 1);
 if (err < 0) {
  dev_err(&right->dev, "failed to set column address: %d\n", err);
  return err;
 }

 err = mipi_dsi_dcs_set_page_address(right, 0, mode->vdisplay - 1);
 if (err < 0) {
  dev_err(&right->dev, "failed to set page address: %d\n", err);
  return err;
 }

 return 0;
}
