#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ast_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AST_IO_DAC_DATA ; 
 int /*<<< orphan*/  AST_IO_DAC_INDEX_WRITE ; 
 int /*<<< orphan*/  AST_IO_SEQ_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct ast_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct ast_private *ast,
				     u8 index, u8 red, u8 green,
				     u8 blue)
{
	FUNC1(ast, AST_IO_DAC_INDEX_WRITE, index);
	FUNC0(ast, AST_IO_SEQ_PORT);
	FUNC1(ast, AST_IO_DAC_DATA, red);
	FUNC0(ast, AST_IO_SEQ_PORT);
	FUNC1(ast, AST_IO_DAC_DATA, green);
	FUNC0(ast, AST_IO_SEQ_PORT);
	FUNC1(ast, AST_IO_DAC_DATA, blue);
	FUNC0(ast, AST_IO_SEQ_PORT);
}