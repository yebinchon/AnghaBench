
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int u8 ;
struct ast_private {int dummy; } ;


 int ast_io_read8 (struct ast_private*,scalar_t__) ;
 int ast_io_write8 (struct ast_private*,scalar_t__,int) ;
 int ast_set_index_reg (struct ast_private*,scalar_t__,int,int) ;

void ast_set_index_reg_mask(struct ast_private *ast,
       uint32_t base, uint8_t index,
       uint8_t mask, uint8_t val)
{
 u8 tmp;
 ast_io_write8(ast, base, index);
 tmp = (ast_io_read8(ast, base + 1) & mask) | val;
 ast_set_index_reg(ast, base, index, tmp);
}
