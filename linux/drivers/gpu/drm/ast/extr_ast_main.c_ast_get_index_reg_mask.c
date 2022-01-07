
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct ast_private {int dummy; } ;


 int ast_io_read8 (struct ast_private*,scalar_t__) ;
 int ast_io_write8 (struct ast_private*,scalar_t__,int) ;

uint8_t ast_get_index_reg_mask(struct ast_private *ast,
          uint32_t base, uint8_t index, uint8_t mask)
{
 uint8_t ret;
 ast_io_write8(ast, base, index);
 ret = ast_io_read8(ast, base + 1) & mask;
 return ret;
}
