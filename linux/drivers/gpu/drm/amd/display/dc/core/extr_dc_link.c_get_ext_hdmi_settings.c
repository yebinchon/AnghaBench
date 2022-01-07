
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pipe_ctx {TYPE_3__* stream; } ;
struct integrated_info {int gpu_cap_info; scalar_t__ dp0_ext_hdmi_slv_addr; int dp0_ext_hdmi_6g_reg_num; scalar_t__ dp1_ext_hdmi_slv_addr; int dp1_ext_hdmi_6g_reg_num; scalar_t__ dp2_ext_hdmi_slv_addr; int dp2_ext_hdmi_6g_reg_num; scalar_t__ dp3_ext_hdmi_slv_addr; int dp3_ext_hdmi_6g_reg_num; int dp3_ext_hdmi_6g_reg_settings; int dp3_ext_hdmi_reg_settings; int dp2_ext_hdmi_6g_reg_settings; int dp2_ext_hdmi_reg_settings; int dp1_ext_hdmi_6g_reg_settings; int dp1_ext_hdmi_reg_settings; int dp0_ext_hdmi_6g_reg_settings; int dp0_ext_hdmi_reg_settings; } ;
struct ext_hdmi_settings {scalar_t__ slv_addr; int reg_num; int reg_num_6g; TYPE_4__* reg_settings_6g; TYPE_4__* reg_settings; } ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;
struct TYPE_8__ {int i2c_reg_index; } ;
struct TYPE_7__ {TYPE_2__* ctx; } ;
struct TYPE_6__ {TYPE_1__* dc_bios; } ;
struct TYPE_5__ {struct integrated_info* integrated_info; } ;






 int memmove (TYPE_4__*,int ,int) ;

__attribute__((used)) static bool get_ext_hdmi_settings(struct pipe_ctx *pipe_ctx,
  enum engine_id eng_id,
  struct ext_hdmi_settings *settings)
{
 bool result = 0;
 int i = 0;
 struct integrated_info *integrated_info =
   pipe_ctx->stream->ctx->dc_bios->integrated_info;

 if (integrated_info == ((void*)0))
  return 0;
 if (integrated_info->gpu_cap_info & 0x20) {
  switch (eng_id) {
  case 131:
   settings->slv_addr = integrated_info->dp0_ext_hdmi_slv_addr;
   settings->reg_num = integrated_info->dp0_ext_hdmi_6g_reg_num;
   settings->reg_num_6g = integrated_info->dp0_ext_hdmi_6g_reg_num;
   memmove(settings->reg_settings,
     integrated_info->dp0_ext_hdmi_reg_settings,
     sizeof(integrated_info->dp0_ext_hdmi_reg_settings));
   memmove(settings->reg_settings_6g,
     integrated_info->dp0_ext_hdmi_6g_reg_settings,
     sizeof(integrated_info->dp0_ext_hdmi_6g_reg_settings));
   result = 1;
   break;
  case 130:
   settings->slv_addr = integrated_info->dp1_ext_hdmi_slv_addr;
   settings->reg_num = integrated_info->dp1_ext_hdmi_6g_reg_num;
   settings->reg_num_6g = integrated_info->dp1_ext_hdmi_6g_reg_num;
   memmove(settings->reg_settings,
     integrated_info->dp1_ext_hdmi_reg_settings,
     sizeof(integrated_info->dp1_ext_hdmi_reg_settings));
   memmove(settings->reg_settings_6g,
     integrated_info->dp1_ext_hdmi_6g_reg_settings,
     sizeof(integrated_info->dp1_ext_hdmi_6g_reg_settings));
   result = 1;
   break;
  case 129:
   settings->slv_addr = integrated_info->dp2_ext_hdmi_slv_addr;
   settings->reg_num = integrated_info->dp2_ext_hdmi_6g_reg_num;
   settings->reg_num_6g = integrated_info->dp2_ext_hdmi_6g_reg_num;
   memmove(settings->reg_settings,
     integrated_info->dp2_ext_hdmi_reg_settings,
     sizeof(integrated_info->dp2_ext_hdmi_reg_settings));
   memmove(settings->reg_settings_6g,
     integrated_info->dp2_ext_hdmi_6g_reg_settings,
     sizeof(integrated_info->dp2_ext_hdmi_6g_reg_settings));
   result = 1;
   break;
  case 128:
   settings->slv_addr = integrated_info->dp3_ext_hdmi_slv_addr;
   settings->reg_num = integrated_info->dp3_ext_hdmi_6g_reg_num;
   settings->reg_num_6g = integrated_info->dp3_ext_hdmi_6g_reg_num;
   memmove(settings->reg_settings,
     integrated_info->dp3_ext_hdmi_reg_settings,
     sizeof(integrated_info->dp3_ext_hdmi_reg_settings));
   memmove(settings->reg_settings_6g,
     integrated_info->dp3_ext_hdmi_6g_reg_settings,
     sizeof(integrated_info->dp3_ext_hdmi_6g_reg_settings));
   result = 1;
   break;
  default:
   break;
  }

  if (result == 1) {

   if (settings->slv_addr == 0)
    return 0;
   if (settings->reg_num > 9)
    return 0;
   if (settings->reg_num_6g > 3)
    return 0;

   for (i = 0; i < settings->reg_num; i++) {
    if (settings->reg_settings[i].i2c_reg_index > 0x20)
     return 0;
   }

   for (i = 0; i < settings->reg_num_6g; i++) {
    if (settings->reg_settings_6g[i].i2c_reg_index > 0x20)
     return 0;
   }
  }
 }

 return result;
}
