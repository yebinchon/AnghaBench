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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int EINVAL ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(void)
{
	int ret;
	ret = FUNC1(154000, 30);
	if (ret != 689) {
		FUNC0("PBN calculation test failed - clock %d, bpp %d, expected PBN %d, actual PBN %d.\n",
				154000, 30, 689, ret);
		return -EINVAL;
	}
	ret = FUNC1(234000, 30);
	if (ret != 1047) {
		FUNC0("PBN calculation test failed - clock %d, bpp %d, expected PBN %d, actual PBN %d.\n",
				234000, 30, 1047, ret);
		return -EINVAL;
	}
	ret = FUNC1(297000, 24);
	if (ret != 1063) {
		FUNC0("PBN calculation test failed - clock %d, bpp %d, expected PBN %d, actual PBN %d.\n",
				297000, 24, 1063, ret);
		return -EINVAL;
	}
	return 0;
}