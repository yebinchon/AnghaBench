
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bios_parser {int dummy; } ;


 int init_adjust_display_pll (struct bios_parser*) ;
 int init_dac_encoder_control (struct bios_parser*) ;
 int init_dac_output_control (struct bios_parser*) ;
 int init_dig_encoder_control (struct bios_parser*) ;
 int init_enable_crtc (struct bios_parser*) ;
 int init_enable_crtc_mem_req (struct bios_parser*) ;
 int init_enable_disp_power_gating (struct bios_parser*) ;
 int init_enable_spread_spectrum_on_ppll (struct bios_parser*) ;
 int init_external_encoder_control (struct bios_parser*) ;
 int init_program_clock (struct bios_parser*) ;
 int init_set_crtc_timing (struct bios_parser*) ;
 int init_set_dce_clock (struct bios_parser*) ;
 int init_set_pixel_clock (struct bios_parser*) ;
 int init_transmitter_control (struct bios_parser*) ;

void dal_bios_parser_init_cmd_tbl(struct bios_parser *bp)
{
 init_dig_encoder_control(bp);
 init_transmitter_control(bp);
 init_set_pixel_clock(bp);
 init_enable_spread_spectrum_on_ppll(bp);
 init_adjust_display_pll(bp);
 init_dac_encoder_control(bp);
 init_dac_output_control(bp);
 init_set_crtc_timing(bp);
 init_enable_crtc(bp);
 init_enable_crtc_mem_req(bp);
 init_program_clock(bp);
 init_external_encoder_control(bp);
 init_enable_disp_power_gating(bp);
 init_set_dce_clock(bp);
}
