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
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int u8 ;
struct ast_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ast_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_private*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_private*,scalar_t__,int,int) ; 

void FUNC3(struct ast_private *ast,
			    uint32_t base, uint8_t index,
			    uint8_t mask, uint8_t val)
{
	u8 tmp;
	FUNC1(ast, base, index);
	tmp = (FUNC0(ast, base + 1) & mask) | val;
	FUNC2(ast, base, index, tmp);
}