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

/* Variables and functions */
 int /*<<< orphan*/  cmd640_lock ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(void)
{
	unsigned long flags;
	u32 tmp;

	FUNC3(&cmd640_lock, flags);
	FUNC1(0x01, 0xCFB);
	tmp = FUNC0(0xCF8);
	FUNC2(0x80000000, 0xCF8);
	if (FUNC0(0xCF8) == 0x80000000) {
		FUNC2(tmp, 0xCF8);
		FUNC4(&cmd640_lock, flags);
		return 1;
	}
	FUNC2(tmp, 0xCF8);
	FUNC4(&cmd640_lock, flags);
	return 0;
}