
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s6e63j0x03 {struct backlight_device* bl_dev; } ;
struct TYPE_2__ {unsigned int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int GAMMA_CMD_CNT ;
 int * gamma_tbl ;
 int s6e63j0x03_apply_mtp_key (struct s6e63j0x03*,int) ;
 int s6e63j0x03_dcs_write_seq (struct s6e63j0x03*,int ,int ) ;
 unsigned int s6e63j0x03_get_brightness_index (unsigned int) ;

__attribute__((used)) static int s6e63j0x03_update_gamma(struct s6e63j0x03 *ctx,
     unsigned int brightness)
{
 struct backlight_device *bl_dev = ctx->bl_dev;
 unsigned int index = s6e63j0x03_get_brightness_index(brightness);
 int ret;

 ret = s6e63j0x03_apply_mtp_key(ctx, 1);
 if (ret < 0)
  return ret;

 ret = s6e63j0x03_dcs_write_seq(ctx, gamma_tbl[index], GAMMA_CMD_CNT);
 if (ret < 0)
  return ret;

 ret = s6e63j0x03_apply_mtp_key(ctx, 0);
 if (ret < 0)
  return ret;

 bl_dev->props.brightness = brightness;

 return 0;
}
