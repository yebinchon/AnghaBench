
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pixel_ext {int bottom; int top; int right; int left; } ;
struct phase_step {int* x; int* y; } ;
struct mdp_format {int alpha_enable; int unpack_tight; int * unpack; int chroma_sample; int fetch_type; scalar_t__ unpack_count; scalar_t__ cpp; int bpc_b; int bpc_g; int bpc_r; int bpc_a; } ;
struct mdp5_kms {int dummy; } ;
struct mdp5_hw_pipe {int pipe; int caps; } ;
struct drm_framebuffer {int dummy; } ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 int BWC_LOSSLESS ;
 size_t COMP_0 ;
 size_t COMP_1_2 ;
 int COND (int,int ) ;
 int CSC_YUV2RGB ;
 int MDP5_PIPE_DECIMATION_HORZ (int) ;
 int MDP5_PIPE_DECIMATION_VERT (int) ;
 int MDP5_PIPE_OUT_SIZE_HEIGHT (unsigned int) ;
 int MDP5_PIPE_OUT_SIZE_WIDTH (unsigned int) ;
 int MDP5_PIPE_OUT_XY_X (int) ;
 int MDP5_PIPE_OUT_XY_Y (int) ;
 int MDP5_PIPE_SRC_FORMAT_ALPHA_ENABLE ;
 int MDP5_PIPE_SRC_FORMAT_A_BPC (int ) ;
 int MDP5_PIPE_SRC_FORMAT_B_BPC (int ) ;
 int MDP5_PIPE_SRC_FORMAT_CHROMA_SAMP (int ) ;
 int MDP5_PIPE_SRC_FORMAT_CPP (scalar_t__) ;
 int MDP5_PIPE_SRC_FORMAT_FETCH_TYPE (int ) ;
 int MDP5_PIPE_SRC_FORMAT_G_BPC (int ) ;
 int MDP5_PIPE_SRC_FORMAT_R_BPC (int ) ;
 int MDP5_PIPE_SRC_FORMAT_UNPACK_COUNT (scalar_t__) ;
 int MDP5_PIPE_SRC_FORMAT_UNPACK_TIGHT ;
 int MDP5_PIPE_SRC_IMG_SIZE_HEIGHT (int) ;
 int MDP5_PIPE_SRC_IMG_SIZE_WIDTH (int) ;
 int MDP5_PIPE_SRC_OP_MODE_BWC (int ) ;
 int MDP5_PIPE_SRC_OP_MODE_FLIP_LR ;
 int MDP5_PIPE_SRC_OP_MODE_FLIP_UD ;
 int MDP5_PIPE_SRC_OP_MODE_SW_PIX_EXT_OVERRIDE ;
 int MDP5_PIPE_SRC_SIZE_HEIGHT (int) ;
 int MDP5_PIPE_SRC_SIZE_WIDTH (int) ;
 int MDP5_PIPE_SRC_UNPACK_ELEM0 (int ) ;
 int MDP5_PIPE_SRC_UNPACK_ELEM1 (int ) ;
 int MDP5_PIPE_SRC_UNPACK_ELEM2 (int ) ;
 int MDP5_PIPE_SRC_UNPACK_ELEM3 (int ) ;
 int MDP5_PIPE_SRC_XY_X (int) ;
 int MDP5_PIPE_SRC_XY_Y (int) ;
 scalar_t__ MDP_FORMAT_IS_YUV (struct mdp_format const*) ;
 int MDP_PIPE_CAP_CSC ;
 int MDP_PIPE_CAP_SCALE ;
 int MDP_PIPE_CAP_SW_PIX_EXT ;
 int REG_MDP5_PIPE_DECIMATION (int) ;
 int REG_MDP5_PIPE_OUT_SIZE (int) ;
 int REG_MDP5_PIPE_OUT_XY (int) ;
 int REG_MDP5_PIPE_SCALE_CONFIG (int) ;
 int REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X (int) ;
 int REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y (int) ;
 int REG_MDP5_PIPE_SCALE_PHASE_STEP_X (int) ;
 int REG_MDP5_PIPE_SCALE_PHASE_STEP_Y (int) ;
 int REG_MDP5_PIPE_SRC_ADDR_SW_STATUS (int) ;
 int REG_MDP5_PIPE_SRC_FORMAT (int) ;
 int REG_MDP5_PIPE_SRC_IMG_SIZE (int) ;
 int REG_MDP5_PIPE_SRC_OP_MODE (int) ;
 int REG_MDP5_PIPE_SRC_SIZE (int) ;
 int REG_MDP5_PIPE_SRC_UNPACK (int) ;
 int REG_MDP5_PIPE_SRC_XY (int) ;
 int csc_disable (struct mdp5_kms*,int) ;
 int csc_enable (struct mdp5_kms*,int,int ) ;
 int mdp5_write (struct mdp5_kms*,int ,int) ;
 int mdp5_write_pixel_ext (struct mdp5_kms*,int,struct mdp_format const*,int,int ,int ,int,int ,int ) ;
 int mdp_get_default_csc_cfg (int ) ;
 int msm_framebuffer_format (struct drm_framebuffer*) ;
 int set_scanout_locked (struct mdp5_kms*,int,struct drm_framebuffer*) ;
 struct mdp_format* to_mdp_format (int ) ;

__attribute__((used)) static void mdp5_hwpipe_mode_set(struct mdp5_kms *mdp5_kms,
     struct mdp5_hw_pipe *hwpipe,
     struct drm_framebuffer *fb,
     struct phase_step *step,
     struct pixel_ext *pe,
     u32 scale_config, u32 hdecm, u32 vdecm,
     bool hflip, bool vflip,
     int crtc_x, int crtc_y,
     unsigned int crtc_w, unsigned int crtc_h,
     u32 src_img_w, u32 src_img_h,
     u32 src_x, u32 src_y,
     u32 src_w, u32 src_h)
{
 enum mdp5_pipe pipe = hwpipe->pipe;
 bool has_pe = hwpipe->caps & MDP_PIPE_CAP_SW_PIX_EXT;
 const struct mdp_format *format =
   to_mdp_format(msm_framebuffer_format(fb));

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC_IMG_SIZE(pipe),
   MDP5_PIPE_SRC_IMG_SIZE_WIDTH(src_img_w) |
   MDP5_PIPE_SRC_IMG_SIZE_HEIGHT(src_img_h));

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC_SIZE(pipe),
   MDP5_PIPE_SRC_SIZE_WIDTH(src_w) |
   MDP5_PIPE_SRC_SIZE_HEIGHT(src_h));

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC_XY(pipe),
   MDP5_PIPE_SRC_XY_X(src_x) |
   MDP5_PIPE_SRC_XY_Y(src_y));

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_OUT_SIZE(pipe),
   MDP5_PIPE_OUT_SIZE_WIDTH(crtc_w) |
   MDP5_PIPE_OUT_SIZE_HEIGHT(crtc_h));

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_OUT_XY(pipe),
   MDP5_PIPE_OUT_XY_X(crtc_x) |
   MDP5_PIPE_OUT_XY_Y(crtc_y));

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC_FORMAT(pipe),
   MDP5_PIPE_SRC_FORMAT_A_BPC(format->bpc_a) |
   MDP5_PIPE_SRC_FORMAT_R_BPC(format->bpc_r) |
   MDP5_PIPE_SRC_FORMAT_G_BPC(format->bpc_g) |
   MDP5_PIPE_SRC_FORMAT_B_BPC(format->bpc_b) |
   COND(format->alpha_enable, MDP5_PIPE_SRC_FORMAT_ALPHA_ENABLE) |
   MDP5_PIPE_SRC_FORMAT_CPP(format->cpp - 1) |
   MDP5_PIPE_SRC_FORMAT_UNPACK_COUNT(format->unpack_count - 1) |
   COND(format->unpack_tight, MDP5_PIPE_SRC_FORMAT_UNPACK_TIGHT) |
   MDP5_PIPE_SRC_FORMAT_FETCH_TYPE(format->fetch_type) |
   MDP5_PIPE_SRC_FORMAT_CHROMA_SAMP(format->chroma_sample));

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC_UNPACK(pipe),
   MDP5_PIPE_SRC_UNPACK_ELEM0(format->unpack[0]) |
   MDP5_PIPE_SRC_UNPACK_ELEM1(format->unpack[1]) |
   MDP5_PIPE_SRC_UNPACK_ELEM2(format->unpack[2]) |
   MDP5_PIPE_SRC_UNPACK_ELEM3(format->unpack[3]));

 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC_OP_MODE(pipe),
   (hflip ? MDP5_PIPE_SRC_OP_MODE_FLIP_LR : 0) |
   (vflip ? MDP5_PIPE_SRC_OP_MODE_FLIP_UD : 0) |
   COND(has_pe, MDP5_PIPE_SRC_OP_MODE_SW_PIX_EXT_OVERRIDE) |
   MDP5_PIPE_SRC_OP_MODE_BWC(BWC_LOSSLESS));


 mdp5_write(mdp5_kms, REG_MDP5_PIPE_SRC_ADDR_SW_STATUS(pipe), 0);

 if (hwpipe->caps & MDP_PIPE_CAP_SW_PIX_EXT)
  mdp5_write_pixel_ext(mdp5_kms, pipe, format,
    src_w, pe->left, pe->right,
    src_h, pe->top, pe->bottom);

 if (hwpipe->caps & MDP_PIPE_CAP_SCALE) {
  mdp5_write(mdp5_kms, REG_MDP5_PIPE_SCALE_PHASE_STEP_X(pipe),
    step->x[COMP_0]);
  mdp5_write(mdp5_kms, REG_MDP5_PIPE_SCALE_PHASE_STEP_Y(pipe),
    step->y[COMP_0]);
  mdp5_write(mdp5_kms, REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_X(pipe),
    step->x[COMP_1_2]);
  mdp5_write(mdp5_kms, REG_MDP5_PIPE_SCALE_CR_PHASE_STEP_Y(pipe),
    step->y[COMP_1_2]);
  mdp5_write(mdp5_kms, REG_MDP5_PIPE_DECIMATION(pipe),
    MDP5_PIPE_DECIMATION_VERT(vdecm) |
    MDP5_PIPE_DECIMATION_HORZ(hdecm));
  mdp5_write(mdp5_kms, REG_MDP5_PIPE_SCALE_CONFIG(pipe),
      scale_config);
 }

 if (hwpipe->caps & MDP_PIPE_CAP_CSC) {
  if (MDP_FORMAT_IS_YUV(format))
   csc_enable(mdp5_kms, pipe,
     mdp_get_default_csc_cfg(CSC_YUV2RGB));
  else
   csc_disable(mdp5_kms, pipe);
 }

 set_scanout_locked(mdp5_kms, pipe, fb);
}
