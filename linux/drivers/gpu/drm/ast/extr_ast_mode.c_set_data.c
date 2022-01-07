
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ast_private {int dummy; } ;
struct ast_i2c_chan {TYPE_1__* dev; } ;
struct TYPE_2__ {struct ast_private* dev_private; } ;


 int AST_IO_CRTC_PORT ;
 int ast_get_index_reg_mask (struct ast_private*,int ,int,int) ;
 int ast_set_index_reg_mask (struct ast_private*,int ,int,int,int) ;

__attribute__((used)) static void set_data(void *i2c_priv, int data)
{
 struct ast_i2c_chan *i2c = i2c_priv;
 struct ast_private *ast = i2c->dev->dev_private;
 int i;
 u8 ujcrb7, jtemp;

 for (i = 0; i < 0x10000; i++) {
  ujcrb7 = ((data & 0x01) ? 0 : 1) << 2;
  ast_set_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xb7, 0xf1, ujcrb7);
  jtemp = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xb7, 0x04);
  if (ujcrb7 == jtemp)
   break;
 }
}
