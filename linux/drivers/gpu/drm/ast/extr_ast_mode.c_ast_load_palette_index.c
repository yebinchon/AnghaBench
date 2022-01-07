
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ast_private {int dummy; } ;


 int AST_IO_DAC_DATA ;
 int AST_IO_DAC_INDEX_WRITE ;
 int AST_IO_SEQ_PORT ;
 int ast_io_read8 (struct ast_private*,int ) ;
 int ast_io_write8 (struct ast_private*,int ,int ) ;

__attribute__((used)) static inline void ast_load_palette_index(struct ast_private *ast,
         u8 index, u8 red, u8 green,
         u8 blue)
{
 ast_io_write8(ast, AST_IO_DAC_INDEX_WRITE, index);
 ast_io_read8(ast, AST_IO_SEQ_PORT);
 ast_io_write8(ast, AST_IO_DAC_DATA, red);
 ast_io_read8(ast, AST_IO_SEQ_PORT);
 ast_io_write8(ast, AST_IO_DAC_DATA, green);
 ast_io_read8(ast, AST_IO_SEQ_PORT);
 ast_io_write8(ast, AST_IO_DAC_DATA, blue);
 ast_io_read8(ast, AST_IO_SEQ_PORT);
}
