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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int FUNC3(u16 reg, char *buf, int nr)
{
	int ret = 0;

	switch (nr) {
	case 1: case 2:
		ret = FUNC2(buf, "%d\n", FUNC0(reg));
		break;
	case 0: case 3: default:
		ret = FUNC2(buf, "%d\n", FUNC1(reg));
		break;
	}
	return ret;
}