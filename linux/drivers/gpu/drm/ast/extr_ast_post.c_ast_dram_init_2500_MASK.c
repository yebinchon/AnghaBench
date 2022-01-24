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
typedef  int u32 ;
struct ast_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ast2500_ddr3_1600_timing_table ; 
 int /*<<< orphan*/  ast2500_ddr4_1600_timing_table ; 
 int FUNC0 (struct ast_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_private*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ast_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ast_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct ast_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct ast_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct ast_private*) ; 

__attribute__((used)) static bool FUNC8(struct ast_private *ast)
{
	u32 data;
	u32 max_tries = 5;

	do {
		if (max_tries-- == 0)
			return false;
		FUNC7(ast);
		FUNC6(ast);
		FUNC4(ast);

		data = FUNC0(ast, 0x1E6E2070);
		if (data & 0x01000000)
			FUNC3(ast, ast2500_ddr4_1600_timing_table);
		else
			FUNC2(ast, ast2500_ddr3_1600_timing_table);
	} while (!FUNC5(ast));

	FUNC1(ast, 0x1E6E2040, FUNC0(ast, 0x1E6E2040) | 0x41);

	/* Patch code */
	data = FUNC0(ast, 0x1E6E200C) & 0xF9FFFFFF;
	FUNC1(ast, 0x1E6E200C, data | 0x10000000);

	return true;
}