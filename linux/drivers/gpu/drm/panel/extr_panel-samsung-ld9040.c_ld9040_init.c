
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld9040 {int dummy; } ;


 int MCS_DISPCTL ;
 int MCS_ELVSS_ON ;
 int MCS_GTCON ;
 int MCS_MANPWR ;
 int MCS_PANEL_CONDITION ;
 int MCS_POWER_CTRL ;
 int MCS_USER_SETTING ;
 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int ld9040_brightness_set (struct ld9040*) ;
 int ld9040_dcs_write_seq_static (struct ld9040*,int ,...) ;

__attribute__((used)) static void ld9040_init(struct ld9040 *ctx)
{
 ld9040_dcs_write_seq_static(ctx, MCS_USER_SETTING, 0x5a, 0x5a);
 ld9040_dcs_write_seq_static(ctx, MCS_PANEL_CONDITION,
  0x05, 0x65, 0x96, 0x71, 0x7d, 0x19, 0x3b, 0x0d,
  0x19, 0x7e, 0x0d, 0xe2, 0x00, 0x00, 0x7e, 0x7d,
  0x07, 0x07, 0x20, 0x20, 0x20, 0x02, 0x02);
 ld9040_dcs_write_seq_static(ctx, MCS_DISPCTL,
  0x02, 0x08, 0x08, 0x10, 0x10);
 ld9040_dcs_write_seq_static(ctx, MCS_MANPWR, 0x04);
 ld9040_dcs_write_seq_static(ctx, MCS_POWER_CTRL,
  0x0a, 0x87, 0x25, 0x6a, 0x44, 0x02, 0x88);
 ld9040_dcs_write_seq_static(ctx, MCS_ELVSS_ON, 0x0d, 0x00, 0x16);
 ld9040_dcs_write_seq_static(ctx, MCS_GTCON, 0x09, 0x00, 0x00);
 ld9040_brightness_set(ctx);
 ld9040_dcs_write_seq_static(ctx, MIPI_DCS_EXIT_SLEEP_MODE);
 ld9040_dcs_write_seq_static(ctx, MIPI_DCS_SET_DISPLAY_ON);
}
