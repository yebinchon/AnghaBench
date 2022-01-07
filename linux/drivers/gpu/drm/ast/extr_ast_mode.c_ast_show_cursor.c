
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct drm_crtc {TYPE_1__* dev; } ;
struct ast_private {int dummy; } ;
struct TYPE_2__ {struct ast_private* dev_private; } ;


 int AST_IO_CRTC_PORT ;
 int ast_set_index_reg_mask (struct ast_private*,int ,int,int,int) ;

__attribute__((used)) static void ast_show_cursor(struct drm_crtc *crtc)
{
 struct ast_private *ast = crtc->dev->dev_private;
 u8 jreg;

 jreg = 0x2;

 jreg |= 1;
 ast_set_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xcb, 0xfc, jreg);
}
