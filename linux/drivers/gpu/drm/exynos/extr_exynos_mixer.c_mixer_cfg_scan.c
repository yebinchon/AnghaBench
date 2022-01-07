
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mixer_context {scalar_t__ mxr_ver; int scan_value; int flags; } ;


 int MXR_BIT_INTERLACE ;
 int MXR_CFG ;
 int MXR_CFG_SCAN_INTERLACE ;
 int MXR_CFG_SCAN_MASK ;
 int MXR_CFG_SCAN_PROGRESSIVE ;
 int MXR_MXR_RES_HEIGHT (int) ;
 int MXR_MXR_RES_WIDTH (int) ;
 int MXR_RESOLUTION ;
 scalar_t__ MXR_VER_128_0_0_184 ;
 int mixer_reg_write (struct mixer_context*,int ,int) ;
 int mixer_reg_writemask (struct mixer_context*,int ,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void mixer_cfg_scan(struct mixer_context *ctx, int width, int height)
{
 u32 val;


 val = test_bit(MXR_BIT_INTERLACE, &ctx->flags) ?
  MXR_CFG_SCAN_INTERLACE : MXR_CFG_SCAN_PROGRESSIVE;

 if (ctx->mxr_ver == MXR_VER_128_0_0_184)
  mixer_reg_write(ctx, MXR_RESOLUTION,
   MXR_MXR_RES_HEIGHT(height) | MXR_MXR_RES_WIDTH(width));
 else
  val |= ctx->scan_value;

 mixer_reg_writemask(ctx, MXR_CFG, val, MXR_CFG_SCAN_MASK);
}
