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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(u64 addr, int b0, int b1, int do_xor, int x0, int x1)
{
	int ret = FUNC0(addr, b0, b0) | (FUNC0(addr, b1, b1) << 1);

	if (do_xor)
		ret ^= FUNC0(addr, x0, x0) | (FUNC0(addr, x1, x1) << 1);

	return ret;
}