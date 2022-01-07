
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct otm8009a {int prepared; } ;
struct TYPE_2__ {scalar_t__ power; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int ARRAY_SIZE (int*) ;
 int DRM_DEBUG (char*) ;
 int ENXIO ;
 scalar_t__ FB_BLANK_NORMAL ;
 int MIPI_DCS_SET_DISPLAY_BRIGHTNESS ;
 int MIPI_DCS_WRITE_CONTROL_DISPLAY ;
 struct otm8009a* bl_get_data (struct backlight_device*) ;
 int otm8009a_dcs_write_buf_hs (struct otm8009a*,int*,int ) ;

__attribute__((used)) static int otm8009a_backlight_update_status(struct backlight_device *bd)
{
 struct otm8009a *ctx = bl_get_data(bd);
 u8 data[2];

 if (!ctx->prepared) {
  DRM_DEBUG("lcd not ready yet for setting its backlight!\n");
  return -ENXIO;
 }

 if (bd->props.power <= FB_BLANK_NORMAL) {




  data[0] = MIPI_DCS_SET_DISPLAY_BRIGHTNESS;
  data[1] = bd->props.brightness;
  otm8009a_dcs_write_buf_hs(ctx, data, ARRAY_SIZE(data));


  data[1] = 0x24;

 } else {

  data[1] = 0;
 }


 data[0] = MIPI_DCS_WRITE_CONTROL_DISPLAY;
 otm8009a_dcs_write_buf_hs(ctx, data, ARRAY_SIZE(data));

 return 0;
}
