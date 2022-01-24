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
struct ast_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ast_private*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct ast_private *ast)
{
	FUNC0(ast, 0x1E6E0074, 0x0000FFFF);
	FUNC0(ast, 0x1E6E007C, 0xFF00FF00);
	if (!FUNC1(ast, 0))
		return false;
	if (!FUNC2(ast, 0))
		return false;
	return true;
}