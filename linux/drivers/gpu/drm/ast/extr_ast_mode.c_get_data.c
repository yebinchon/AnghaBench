
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ast_private {int dummy; } ;
struct ast_i2c_chan {TYPE_1__* dev; } ;
struct TYPE_2__ {struct ast_private* dev_private; } ;


 int AST_IO_CRTC_PORT ;
 int ast_get_index_reg_mask (struct ast_private*,int ,int,int) ;

__attribute__((used)) static int get_data(void *i2c_priv)
{
 struct ast_i2c_chan *i2c = i2c_priv;
 struct ast_private *ast = i2c->dev->dev_private;
 uint32_t val, val2, count, pass;

 count = 0;
 pass = 0;
 val = (ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xb7, 0x20) >> 5) & 0x01;
 do {
  val2 = (ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xb7, 0x20) >> 5) & 0x01;
  if (val == val2) {
   pass++;
  } else {
   pass = 0;
   val = (ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xb7, 0x20) >> 5) & 0x01;
  }
 } while ((pass < 5) && (count++ < 0x10000));

 return val & 1 ? 1 : 0;
}
