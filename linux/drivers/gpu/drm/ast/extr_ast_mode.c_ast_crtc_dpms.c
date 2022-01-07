
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {TYPE_1__* dev; } ;
struct ast_private {scalar_t__ chip; int tx_chip_type; } ;
struct TYPE_2__ {struct ast_private* dev_private; } ;


 scalar_t__ AST1180 ;
 int AST_IO_SEQ_PORT ;
 int AST_TX_DP501 ;




 int ast_crtc_load_lut (struct drm_crtc*) ;
 int ast_set_dp501_video_output (TYPE_1__*,int) ;
 int ast_set_index_reg_mask (struct ast_private*,int ,int,int,int) ;

__attribute__((used)) static void ast_crtc_dpms(struct drm_crtc *crtc, int mode)
{
 struct ast_private *ast = crtc->dev->dev_private;

 if (ast->chip == AST1180)
  return;

 switch (mode) {
 case 130:
 case 129:
 case 128:
  ast_set_index_reg_mask(ast, AST_IO_SEQ_PORT, 0x1, 0xdf, 0);
  if (ast->tx_chip_type == AST_TX_DP501)
   ast_set_dp501_video_output(crtc->dev, 1);
  ast_crtc_load_lut(crtc);
  break;
 case 131:
  if (ast->tx_chip_type == AST_TX_DP501)
   ast_set_dp501_video_output(crtc->dev, 0);
  ast_set_index_reg_mask(ast, AST_IO_SEQ_PORT, 0x1, 0xdf, 0x20);
  break;
 }
}
