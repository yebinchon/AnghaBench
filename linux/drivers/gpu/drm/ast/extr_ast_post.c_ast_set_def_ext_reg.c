
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct drm_device {TYPE_1__* pdev; struct ast_private* dev_private; } ;
struct ast_private {scalar_t__ chip; } ;
struct TYPE_2__ {int revision; } ;


 scalar_t__ AST2300 ;
 scalar_t__ AST2400 ;
 scalar_t__ AST2500 ;
 int AST_IO_CRTC_PORT ;
 int ast_set_index_reg (struct ast_private*,int ,int,int) ;
 int ast_set_index_reg_mask (struct ast_private*,int ,int,int,int const) ;
 int* extreginfo ;
 int* extreginfo_ast2300 ;
 int* extreginfo_ast2300a0 ;

__attribute__((used)) static void
ast_set_def_ext_reg(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;
 u8 i, index, reg;
 const u8 *ext_reg_info;


 for (i = 0x81; i <= 0x9f; i++)
  ast_set_index_reg(ast, AST_IO_CRTC_PORT, i, 0x00);

 if (ast->chip == AST2300 || ast->chip == AST2400 ||
     ast->chip == AST2500) {
  if (dev->pdev->revision >= 0x20)
   ext_reg_info = extreginfo_ast2300;
  else
   ext_reg_info = extreginfo_ast2300a0;
 } else
  ext_reg_info = extreginfo;

 index = 0xa0;
 while (*ext_reg_info != 0xff) {
  ast_set_index_reg_mask(ast, AST_IO_CRTC_PORT, index, 0x00, *ext_reg_info);
  index++;
  ext_reg_info++;
 }





 ast_set_index_reg_mask(ast, AST_IO_CRTC_PORT, 0x8c, 0x00, 0x01);
 ast_set_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xb7, 0x00, 0x00);


 reg = 0x04;
 if (ast->chip == AST2300 || ast->chip == AST2400 ||
     ast->chip == AST2500)
  reg |= 0x20;
 ast_set_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xb6, 0xff, reg);
}
