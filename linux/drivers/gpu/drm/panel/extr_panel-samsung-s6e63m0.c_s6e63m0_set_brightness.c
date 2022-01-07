
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s6e63m0 {int dummy; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int ARRAY_SIZE (int ) ;
 int MCS_PGAMMACTL ;
 struct s6e63m0* bl_get_data (struct backlight_device*) ;
 int s6e63m0_clear_error (struct s6e63m0*) ;
 int s6e63m0_dcs_write (struct s6e63m0*,int ,int ) ;
 int s6e63m0_dcs_write_seq_static (struct s6e63m0*,int ,int) ;
 int * s6e63m0_gamma_22 ;

__attribute__((used)) static int s6e63m0_set_brightness(struct backlight_device *bd)
{
 struct s6e63m0 *ctx = bl_get_data(bd);

 int brightness = bd->props.brightness;


 s6e63m0_dcs_write(ctx, s6e63m0_gamma_22[brightness],
     ARRAY_SIZE(s6e63m0_gamma_22[brightness]));


 s6e63m0_dcs_write_seq_static(ctx, MCS_PGAMMACTL, 0x01);

 return s6e63m0_clear_error(ctx);
}
