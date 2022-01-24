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
 int FUNC0 (struct ast_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_private*,int,int) ; 

__attribute__((used)) static void FUNC2(struct ast_private *ast, u32 tRFC)
{
	u32 reg_04, reg_14;

	reg_04 = FUNC0(ast, 0x1E6E0004) & 0xfffffffc;
	reg_14 = FUNC0(ast, 0x1E6E0014) & 0xffffff00;

	FUNC1(ast, 0xA0100000, 0x41424344);
	FUNC1(ast, 0x90100000, 0x35363738);
	FUNC1(ast, 0x88100000, 0x292A2B2C);
	FUNC1(ast, 0x80100000, 0x1D1E1F10);

	/* Check 8Gbit */
	if (FUNC0(ast, 0xA0100000) == 0x41424344) {
		reg_04 |= 0x03;
		reg_14 |= (tRFC >> 24) & 0xFF;
		/* Check 4Gbit */
	} else if (FUNC0(ast, 0x90100000) == 0x35363738) {
		reg_04 |= 0x02;
		reg_14 |= (tRFC >> 16) & 0xFF;
		/* Check 2Gbit */
	} else if (FUNC0(ast, 0x88100000) == 0x292A2B2C) {
		reg_04 |= 0x01;
		reg_14 |= (tRFC >> 8) & 0xFF;
	} else {
		reg_14 |= tRFC & 0xFF;
	}
	FUNC1(ast, 0x1E6E0004, reg_04);
	FUNC1(ast, 0x1E6E0014, reg_14);
}