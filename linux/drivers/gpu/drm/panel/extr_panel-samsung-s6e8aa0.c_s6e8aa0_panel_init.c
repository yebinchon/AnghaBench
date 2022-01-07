
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e8aa0 {int init_delay; } ;


 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int msleep (int) ;
 int s6e8aa0_apply_level_1_key (struct s6e8aa0*) ;
 int s6e8aa0_apply_level_2_key (struct s6e8aa0*) ;
 int s6e8aa0_brightness_set (struct s6e8aa0*) ;
 int s6e8aa0_dcs_write_seq_static (struct s6e8aa0*,int ) ;
 int s6e8aa0_display_condition_set (struct s6e8aa0*) ;
 int s6e8aa0_elvss_nvm_set (struct s6e8aa0*) ;
 int s6e8aa0_etc_elvss_control (struct s6e8aa0*) ;
 int s6e8aa0_etc_pentile_control (struct s6e8aa0*) ;
 int s6e8aa0_etc_power_control (struct s6e8aa0*) ;
 int s6e8aa0_etc_source_control (struct s6e8aa0*) ;
 int s6e8aa0_panel_cond_set (struct s6e8aa0*) ;

__attribute__((used)) static void s6e8aa0_panel_init(struct s6e8aa0 *ctx)
{
 s6e8aa0_apply_level_1_key(ctx);
 s6e8aa0_apply_level_2_key(ctx);
 msleep(20);

 s6e8aa0_dcs_write_seq_static(ctx, MIPI_DCS_EXIT_SLEEP_MODE);
 msleep(40);

 s6e8aa0_panel_cond_set(ctx);
 s6e8aa0_display_condition_set(ctx);
 s6e8aa0_brightness_set(ctx);
 s6e8aa0_etc_source_control(ctx);
 s6e8aa0_etc_pentile_control(ctx);
 s6e8aa0_elvss_nvm_set(ctx);
 s6e8aa0_etc_power_control(ctx);
 s6e8aa0_etc_elvss_control(ctx);
 msleep(ctx->init_delay);
}
