
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef struct spread_spectrum_data {scalar_t__ freq_range_khz; } const spread_spectrum_data ;
struct dce110_clk_src {scalar_t__ dvi_ss_params_cnt; scalar_t__ hdmi_ss_params_cnt; scalar_t__ lvds_ss_params_cnt; scalar_t__ dp_ss_params_cnt; struct spread_spectrum_data const* dp_ss_params; struct spread_spectrum_data const* lvds_ss_params; struct spread_spectrum_data const* hdmi_ss_params; struct spread_spectrum_data const* dvi_ss_params; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
__attribute__((used)) static const struct spread_spectrum_data *get_ss_data_entry(
  struct dce110_clk_src *clk_src,
  enum signal_type signal,
  uint32_t pix_clk_khz)
{

 uint32_t entrys_num;
 uint32_t i;
 struct spread_spectrum_data *ss_parm = ((void*)0);
 struct spread_spectrum_data *ret = ((void*)0);

 switch (signal) {
 case 132:
 case 133:
  ss_parm = clk_src->dvi_ss_params;
  entrys_num = clk_src->dvi_ss_params_cnt;
  break;

 case 130:
  ss_parm = clk_src->hdmi_ss_params;
  entrys_num = clk_src->hdmi_ss_params_cnt;
  break;

 case 129:
  ss_parm = clk_src->lvds_ss_params;
  entrys_num = clk_src->lvds_ss_params_cnt;
  break;

 case 135:
 case 134:
 case 131:
 case 128:
  ss_parm = clk_src->dp_ss_params;
  entrys_num = clk_src->dp_ss_params_cnt;
  break;

 default:
  ss_parm = ((void*)0);
  entrys_num = 0;
  break;
 }

 if (ss_parm == ((void*)0))
  return ret;

 for (i = 0; i < entrys_num; ++i, ++ss_parm) {
  if (ss_parm->freq_range_khz >= pix_clk_khz) {
   ret = ss_parm;
   break;
  }
 }

 return ret;
}
