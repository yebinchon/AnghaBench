#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct venc_device {int dummy; } ;
struct venc_config {int /*<<< orphan*/  sync_ctrl; int /*<<< orphan*/  f_control; int /*<<< orphan*/  gen_ctrl; int /*<<< orphan*/  tvdetgp_int_start_stop_y; int /*<<< orphan*/  tvdetgp_int_start_stop_x; int /*<<< orphan*/  htrigger_vtrigger; int /*<<< orphan*/  ln_sel; int /*<<< orphan*/  line21; int /*<<< orphan*/  x_color; int /*<<< orphan*/  hfltr_ctrl; int /*<<< orphan*/  vidout_ctrl; int /*<<< orphan*/  fid_ext_start_y__fid_ext_offset_y; int /*<<< orphan*/  fid_int_offset_y__fid_ext_start_x; int /*<<< orphan*/  fid_int_start_x__fid_int_start_y; int /*<<< orphan*/  avid_start_stop_y; int /*<<< orphan*/  avid_start_stop_x; int /*<<< orphan*/  vs_ext_stop_y; int /*<<< orphan*/  vs_ext_stop_x__vs_ext_start_y; int /*<<< orphan*/  vs_int_stop_y__vs_ext_start_x; int /*<<< orphan*/  vs_int_stop_x__vs_int_start_y; int /*<<< orphan*/  vs_int_start_x; int /*<<< orphan*/  hs_ext_start_stop_x; int /*<<< orphan*/  hs_int_start_stop_x; int /*<<< orphan*/  lal__phase_reset; int /*<<< orphan*/  flen__fal; int /*<<< orphan*/  savid__eavid; int /*<<< orphan*/  l21__wc_ctl; int /*<<< orphan*/  s_carr; int /*<<< orphan*/  bstamp_wss_data; int /*<<< orphan*/  m_control; int /*<<< orphan*/  blank_level; int /*<<< orphan*/  black_level; int /*<<< orphan*/  gain_y; int /*<<< orphan*/  gain_v; int /*<<< orphan*/  gain_u; int /*<<< orphan*/  c_phase; int /*<<< orphan*/  cc_carr_wss_carr; int /*<<< orphan*/  flens; int /*<<< orphan*/  llen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  VENC_AVID_START_STOP_X ; 
 int /*<<< orphan*/  VENC_AVID_START_STOP_Y ; 
 int /*<<< orphan*/  VENC_BLACK_LEVEL ; 
 int /*<<< orphan*/  VENC_BLANK_LEVEL ; 
 int /*<<< orphan*/  VENC_BSTAMP_WSS_DATA ; 
 int /*<<< orphan*/  VENC_CC_CARR_WSS_CARR ; 
 int /*<<< orphan*/  VENC_C_PHASE ; 
 int /*<<< orphan*/  VENC_DAC_B__DAC_C ; 
 int /*<<< orphan*/  VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y ; 
 int /*<<< orphan*/  VENC_FID_INT_OFFSET_Y__FID_EXT_START_X ; 
 int /*<<< orphan*/  VENC_FID_INT_START_X__FID_INT_START_Y ; 
 int /*<<< orphan*/  VENC_FLENS ; 
 int /*<<< orphan*/  VENC_FLEN__FAL ; 
 int /*<<< orphan*/  VENC_F_CONTROL ; 
 int /*<<< orphan*/  VENC_GAIN_U ; 
 int /*<<< orphan*/  VENC_GAIN_V ; 
 int /*<<< orphan*/  VENC_GAIN_Y ; 
 int /*<<< orphan*/  VENC_GEN_CTRL ; 
 int /*<<< orphan*/  VENC_HFLTR_CTRL ; 
 int /*<<< orphan*/  VENC_HS_EXT_START_STOP_X ; 
 int /*<<< orphan*/  VENC_HS_INT_START_STOP_X ; 
 int /*<<< orphan*/  VENC_HTRIGGER_VTRIGGER ; 
 int /*<<< orphan*/  VENC_L21__WC_CTL ; 
 int /*<<< orphan*/  VENC_LAL__PHASE_RESET ; 
 int /*<<< orphan*/  VENC_LINE21 ; 
 int /*<<< orphan*/  VENC_LLEN ; 
 int /*<<< orphan*/  VENC_LN_SEL ; 
 int /*<<< orphan*/  VENC_M_CONTROL ; 
 int /*<<< orphan*/  VENC_SAVID__EAVID ; 
 int /*<<< orphan*/  VENC_SYNC_CTRL ; 
 int /*<<< orphan*/  VENC_S_CARR ; 
 int /*<<< orphan*/  VENC_TVDETGP_INT_START_STOP_X ; 
 int /*<<< orphan*/  VENC_TVDETGP_INT_START_STOP_Y ; 
 int /*<<< orphan*/  VENC_VIDOUT_CTRL ; 
 int /*<<< orphan*/  VENC_VS_EXT_STOP_X__VS_EXT_START_Y ; 
 int /*<<< orphan*/  VENC_VS_EXT_STOP_Y ; 
 int /*<<< orphan*/  VENC_VS_INT_START_X ; 
 int /*<<< orphan*/  VENC_VS_INT_STOP_X__VS_INT_START_Y ; 
 int /*<<< orphan*/  VENC_VS_INT_STOP_Y__VS_EXT_START_X ; 
 int /*<<< orphan*/  VENC_X_COLOR ; 
 int /*<<< orphan*/  FUNC1 (struct venc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct venc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct venc_device *venc,
			      const struct venc_config *config)
{
	FUNC0("write venc conf\n");

	FUNC2(venc, VENC_LLEN, config->llen);
	FUNC2(venc, VENC_FLENS, config->flens);
	FUNC2(venc, VENC_CC_CARR_WSS_CARR, config->cc_carr_wss_carr);
	FUNC2(venc, VENC_C_PHASE, config->c_phase);
	FUNC2(venc, VENC_GAIN_U, config->gain_u);
	FUNC2(venc, VENC_GAIN_V, config->gain_v);
	FUNC2(venc, VENC_GAIN_Y, config->gain_y);
	FUNC2(venc, VENC_BLACK_LEVEL, config->black_level);
	FUNC2(venc, VENC_BLANK_LEVEL, config->blank_level);
	FUNC2(venc, VENC_M_CONTROL, config->m_control);
	FUNC2(venc, VENC_BSTAMP_WSS_DATA, config->bstamp_wss_data);
	FUNC2(venc, VENC_S_CARR, config->s_carr);
	FUNC2(venc, VENC_L21__WC_CTL, config->l21__wc_ctl);
	FUNC2(venc, VENC_SAVID__EAVID, config->savid__eavid);
	FUNC2(venc, VENC_FLEN__FAL, config->flen__fal);
	FUNC2(venc, VENC_LAL__PHASE_RESET, config->lal__phase_reset);
	FUNC2(venc, VENC_HS_INT_START_STOP_X,
		       config->hs_int_start_stop_x);
	FUNC2(venc, VENC_HS_EXT_START_STOP_X,
		       config->hs_ext_start_stop_x);
	FUNC2(venc, VENC_VS_INT_START_X, config->vs_int_start_x);
	FUNC2(venc, VENC_VS_INT_STOP_X__VS_INT_START_Y,
		       config->vs_int_stop_x__vs_int_start_y);
	FUNC2(venc, VENC_VS_INT_STOP_Y__VS_EXT_START_X,
		       config->vs_int_stop_y__vs_ext_start_x);
	FUNC2(venc, VENC_VS_EXT_STOP_X__VS_EXT_START_Y,
		       config->vs_ext_stop_x__vs_ext_start_y);
	FUNC2(venc, VENC_VS_EXT_STOP_Y, config->vs_ext_stop_y);
	FUNC2(venc, VENC_AVID_START_STOP_X, config->avid_start_stop_x);
	FUNC2(venc, VENC_AVID_START_STOP_Y, config->avid_start_stop_y);
	FUNC2(venc, VENC_FID_INT_START_X__FID_INT_START_Y,
		       config->fid_int_start_x__fid_int_start_y);
	FUNC2(venc, VENC_FID_INT_OFFSET_Y__FID_EXT_START_X,
		       config->fid_int_offset_y__fid_ext_start_x);
	FUNC2(venc, VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y,
		       config->fid_ext_start_y__fid_ext_offset_y);

	FUNC2(venc, VENC_DAC_B__DAC_C,
		       FUNC1(venc, VENC_DAC_B__DAC_C));
	FUNC2(venc, VENC_VIDOUT_CTRL, config->vidout_ctrl);
	FUNC2(venc, VENC_HFLTR_CTRL, config->hfltr_ctrl);
	FUNC2(venc, VENC_X_COLOR, config->x_color);
	FUNC2(venc, VENC_LINE21, config->line21);
	FUNC2(venc, VENC_LN_SEL, config->ln_sel);
	FUNC2(venc, VENC_HTRIGGER_VTRIGGER, config->htrigger_vtrigger);
	FUNC2(venc, VENC_TVDETGP_INT_START_STOP_X,
		       config->tvdetgp_int_start_stop_x);
	FUNC2(venc, VENC_TVDETGP_INT_START_STOP_Y,
		       config->tvdetgp_int_start_stop_y);
	FUNC2(venc, VENC_GEN_CTRL, config->gen_ctrl);
	FUNC2(venc, VENC_F_CONTROL, config->f_control);
	FUNC2(venc, VENC_SYNC_CTRL, config->sync_ctrl);
}