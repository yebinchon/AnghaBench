
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u16 ;
struct ast_private {int dummy; } ;


 int ast_io_write16 (struct ast_private*,int ,int) ;

__attribute__((used)) static inline void ast_set_index_reg(struct ast_private *ast,
         uint32_t base, uint8_t index,
         uint8_t val)
{
 ast_io_write16(ast, base, ((u16)val << 8) | index);
}
