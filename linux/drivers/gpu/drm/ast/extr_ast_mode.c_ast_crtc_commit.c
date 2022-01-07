
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {TYPE_1__* dev; } ;
struct ast_private {int dummy; } ;
struct TYPE_2__ {struct ast_private* dev_private; } ;


 int AST_IO_SEQ_PORT ;
 int ast_crtc_load_lut (struct drm_crtc*) ;
 int ast_set_index_reg_mask (struct ast_private*,int ,int,int,int ) ;

__attribute__((used)) static void ast_crtc_commit(struct drm_crtc *crtc)
{
 struct ast_private *ast = crtc->dev->dev_private;
 ast_set_index_reg_mask(ast, AST_IO_SEQ_PORT, 0x1, 0xdf, 0);
 ast_crtc_load_lut(crtc);
}
