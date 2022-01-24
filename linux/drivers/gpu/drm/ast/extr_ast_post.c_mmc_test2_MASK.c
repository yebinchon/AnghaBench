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
typedef  int u8 ;
typedef  int u32 ;
struct ast_private {int dummy; } ;

/* Variables and functions */
 int TIMEOUT ; 
 int FUNC0 (struct ast_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_private*,int,int) ; 

__attribute__((used)) static u32 FUNC2(struct ast_private *ast, u32 datagen, u8 test_ctl)
{
	u32 data, timeout;

	FUNC1(ast, 0x1e6e0070, 0x00000000);
	FUNC1(ast, 0x1e6e0070, (datagen << 3) | test_ctl);
	timeout = 0;
	do {
		data = FUNC0(ast, 0x1e6e0070) & 0x1000;
		if (++timeout > TIMEOUT) {
			FUNC1(ast, 0x1e6e0070, 0x0);
			return 0xffffffff;
		}
	} while (!data);
	data = FUNC0(ast, 0x1e6e0078);
	data = (data | (data >> 16)) & 0xffff;
	FUNC1(ast, 0x1e6e0070, 0x00000000);
	return data;
}