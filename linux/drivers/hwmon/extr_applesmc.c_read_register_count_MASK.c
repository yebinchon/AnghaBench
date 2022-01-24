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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  APPLESMC_READ_CMD ; 
 int /*<<< orphan*/  KEY_COUNT_KEY ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(unsigned int *count)
{
	__be32 be;
	int ret;

	ret = FUNC1(APPLESMC_READ_CMD, KEY_COUNT_KEY, (u8 *)&be, 4);
	if (ret)
		return ret;

	*count = FUNC0(be);
	return 0;
}