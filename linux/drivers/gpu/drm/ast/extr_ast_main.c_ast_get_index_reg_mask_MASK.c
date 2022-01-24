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
struct ast_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ast_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_private*,scalar_t__,int) ; 

uint8_t FUNC2(struct ast_private *ast,
			       uint32_t base, uint8_t index, uint8_t mask)
{
	uint8_t ret;
	FUNC1(ast, base, index);
	ret = FUNC0(ast, base + 1) & mask;
	return ret;
}