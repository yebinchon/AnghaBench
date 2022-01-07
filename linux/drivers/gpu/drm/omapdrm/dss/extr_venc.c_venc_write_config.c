
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_device {int dummy; } ;
struct venc_config {int sync_ctrl; int f_control; int gen_ctrl; int tvdetgp_int_start_stop_y; int tvdetgp_int_start_stop_x; int htrigger_vtrigger; int ln_sel; int line21; int x_color; int hfltr_ctrl; int vidout_ctrl; int fid_ext_start_y__fid_ext_offset_y; int fid_int_offset_y__fid_ext_start_x; int fid_int_start_x__fid_int_start_y; int avid_start_stop_y; int avid_start_stop_x; int vs_ext_stop_y; int vs_ext_stop_x__vs_ext_start_y; int vs_int_stop_y__vs_ext_start_x; int vs_int_stop_x__vs_int_start_y; int vs_int_start_x; int hs_ext_start_stop_x; int hs_int_start_stop_x; int lal__phase_reset; int flen__fal; int savid__eavid; int l21__wc_ctl; int s_carr; int bstamp_wss_data; int m_control; int blank_level; int black_level; int gain_y; int gain_v; int gain_u; int c_phase; int cc_carr_wss_carr; int flens; int llen; } ;


 int DSSDBG (char*) ;
 int VENC_AVID_START_STOP_X ;
 int VENC_AVID_START_STOP_Y ;
 int VENC_BLACK_LEVEL ;
 int VENC_BLANK_LEVEL ;
 int VENC_BSTAMP_WSS_DATA ;
 int VENC_CC_CARR_WSS_CARR ;
 int VENC_C_PHASE ;
 int VENC_DAC_B__DAC_C ;
 int VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y ;
 int VENC_FID_INT_OFFSET_Y__FID_EXT_START_X ;
 int VENC_FID_INT_START_X__FID_INT_START_Y ;
 int VENC_FLENS ;
 int VENC_FLEN__FAL ;
 int VENC_F_CONTROL ;
 int VENC_GAIN_U ;
 int VENC_GAIN_V ;
 int VENC_GAIN_Y ;
 int VENC_GEN_CTRL ;
 int VENC_HFLTR_CTRL ;
 int VENC_HS_EXT_START_STOP_X ;
 int VENC_HS_INT_START_STOP_X ;
 int VENC_HTRIGGER_VTRIGGER ;
 int VENC_L21__WC_CTL ;
 int VENC_LAL__PHASE_RESET ;
 int VENC_LINE21 ;
 int VENC_LLEN ;
 int VENC_LN_SEL ;
 int VENC_M_CONTROL ;
 int VENC_SAVID__EAVID ;
 int VENC_SYNC_CTRL ;
 int VENC_S_CARR ;
 int VENC_TVDETGP_INT_START_STOP_X ;
 int VENC_TVDETGP_INT_START_STOP_Y ;
 int VENC_VIDOUT_CTRL ;
 int VENC_VS_EXT_STOP_X__VS_EXT_START_Y ;
 int VENC_VS_EXT_STOP_Y ;
 int VENC_VS_INT_START_X ;
 int VENC_VS_INT_STOP_X__VS_INT_START_Y ;
 int VENC_VS_INT_STOP_Y__VS_EXT_START_X ;
 int VENC_X_COLOR ;
 int venc_read_reg (struct venc_device*,int ) ;
 int venc_write_reg (struct venc_device*,int ,int ) ;

__attribute__((used)) static void venc_write_config(struct venc_device *venc,
         const struct venc_config *config)
{
 DSSDBG("write venc conf\n");

 venc_write_reg(venc, VENC_LLEN, config->llen);
 venc_write_reg(venc, VENC_FLENS, config->flens);
 venc_write_reg(venc, VENC_CC_CARR_WSS_CARR, config->cc_carr_wss_carr);
 venc_write_reg(venc, VENC_C_PHASE, config->c_phase);
 venc_write_reg(venc, VENC_GAIN_U, config->gain_u);
 venc_write_reg(venc, VENC_GAIN_V, config->gain_v);
 venc_write_reg(venc, VENC_GAIN_Y, config->gain_y);
 venc_write_reg(venc, VENC_BLACK_LEVEL, config->black_level);
 venc_write_reg(venc, VENC_BLANK_LEVEL, config->blank_level);
 venc_write_reg(venc, VENC_M_CONTROL, config->m_control);
 venc_write_reg(venc, VENC_BSTAMP_WSS_DATA, config->bstamp_wss_data);
 venc_write_reg(venc, VENC_S_CARR, config->s_carr);
 venc_write_reg(venc, VENC_L21__WC_CTL, config->l21__wc_ctl);
 venc_write_reg(venc, VENC_SAVID__EAVID, config->savid__eavid);
 venc_write_reg(venc, VENC_FLEN__FAL, config->flen__fal);
 venc_write_reg(venc, VENC_LAL__PHASE_RESET, config->lal__phase_reset);
 venc_write_reg(venc, VENC_HS_INT_START_STOP_X,
         config->hs_int_start_stop_x);
 venc_write_reg(venc, VENC_HS_EXT_START_STOP_X,
         config->hs_ext_start_stop_x);
 venc_write_reg(venc, VENC_VS_INT_START_X, config->vs_int_start_x);
 venc_write_reg(venc, VENC_VS_INT_STOP_X__VS_INT_START_Y,
         config->vs_int_stop_x__vs_int_start_y);
 venc_write_reg(venc, VENC_VS_INT_STOP_Y__VS_EXT_START_X,
         config->vs_int_stop_y__vs_ext_start_x);
 venc_write_reg(venc, VENC_VS_EXT_STOP_X__VS_EXT_START_Y,
         config->vs_ext_stop_x__vs_ext_start_y);
 venc_write_reg(venc, VENC_VS_EXT_STOP_Y, config->vs_ext_stop_y);
 venc_write_reg(venc, VENC_AVID_START_STOP_X, config->avid_start_stop_x);
 venc_write_reg(venc, VENC_AVID_START_STOP_Y, config->avid_start_stop_y);
 venc_write_reg(venc, VENC_FID_INT_START_X__FID_INT_START_Y,
         config->fid_int_start_x__fid_int_start_y);
 venc_write_reg(venc, VENC_FID_INT_OFFSET_Y__FID_EXT_START_X,
         config->fid_int_offset_y__fid_ext_start_x);
 venc_write_reg(venc, VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y,
         config->fid_ext_start_y__fid_ext_offset_y);

 venc_write_reg(venc, VENC_DAC_B__DAC_C,
         venc_read_reg(venc, VENC_DAC_B__DAC_C));
 venc_write_reg(venc, VENC_VIDOUT_CTRL, config->vidout_ctrl);
 venc_write_reg(venc, VENC_HFLTR_CTRL, config->hfltr_ctrl);
 venc_write_reg(venc, VENC_X_COLOR, config->x_color);
 venc_write_reg(venc, VENC_LINE21, config->line21);
 venc_write_reg(venc, VENC_LN_SEL, config->ln_sel);
 venc_write_reg(venc, VENC_HTRIGGER_VTRIGGER, config->htrigger_vtrigger);
 venc_write_reg(venc, VENC_TVDETGP_INT_START_STOP_X,
         config->tvdetgp_int_start_stop_x);
 venc_write_reg(venc, VENC_TVDETGP_INT_START_STOP_Y,
         config->tvdetgp_int_start_stop_y);
 venc_write_reg(venc, VENC_GEN_CTRL, config->gen_ctrl);
 venc_write_reg(venc, VENC_F_CONTROL, config->f_control);
 venc_write_reg(venc, VENC_SYNC_CTRL, config->sync_ctrl);
}
