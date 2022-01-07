
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct drm_crtc {TYPE_1__* dev; } ;
struct ast_private {int dummy; } ;
struct TYPE_2__ {struct ast_private* dev_private; } ;


 int AST_IO_CRTC_PORT ;
 int ast_set_index_reg (struct ast_private*,int ,int,int ) ;

__attribute__((used)) static void ast_set_start_address_crt1(struct drm_crtc *crtc, unsigned offset)
{
 struct ast_private *ast = crtc->dev->dev_private;
 u32 addr;

 addr = offset >> 2;
 ast_set_index_reg(ast, AST_IO_CRTC_PORT, 0x0d, (u8)(addr & 0xff));
 ast_set_index_reg(ast, AST_IO_CRTC_PORT, 0x0c, (u8)((addr >> 8) & 0xff));
 ast_set_index_reg(ast, AST_IO_CRTC_PORT, 0xaf, (u8)((addr >> 16) & 0xff));

}
