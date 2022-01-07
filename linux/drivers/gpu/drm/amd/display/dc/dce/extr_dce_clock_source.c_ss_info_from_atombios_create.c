
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce110_clk_src {int lvds_ss_params_cnt; int lvds_ss_params; int dvi_ss_params_cnt; int dvi_ss_params; int hdmi_ss_params_cnt; int hdmi_ss_params; int dp_ss_params_cnt; int dp_ss_params; } ;


 int AS_SIGNAL_TYPE_DISPLAY_PORT ;
 int AS_SIGNAL_TYPE_DVI ;
 int AS_SIGNAL_TYPE_HDMI ;
 int AS_SIGNAL_TYPE_LVDS ;
 int get_ss_info_from_atombios (struct dce110_clk_src*,int ,int *,int *) ;

__attribute__((used)) static void ss_info_from_atombios_create(
 struct dce110_clk_src *clk_src)
{
 get_ss_info_from_atombios(
  clk_src,
  AS_SIGNAL_TYPE_DISPLAY_PORT,
  &clk_src->dp_ss_params,
  &clk_src->dp_ss_params_cnt);
 get_ss_info_from_atombios(
  clk_src,
  AS_SIGNAL_TYPE_HDMI,
  &clk_src->hdmi_ss_params,
  &clk_src->hdmi_ss_params_cnt);
 get_ss_info_from_atombios(
  clk_src,
  AS_SIGNAL_TYPE_DVI,
  &clk_src->dvi_ss_params,
  &clk_src->dvi_ss_params_cnt);
 get_ss_info_from_atombios(
  clk_src,
  AS_SIGNAL_TYPE_LVDS,
  &clk_src->lvds_ss_params,
  &clk_src->lvds_ss_params_cnt);
}
