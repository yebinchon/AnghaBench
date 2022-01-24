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
struct analogix_dp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct analogix_dp_device*) ; 
 int FUNC2 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct analogix_dp_device*) ; 

__attribute__((used)) static int FUNC9(struct analogix_dp_device *dp)
{
	int ret;

	FUNC7(dp);

	FUNC8(dp);

	FUNC3(dp);
	FUNC6(dp);

	/* SW defined function Normal operation */
	FUNC1(dp);

	FUNC0(dp);
	ret = FUNC2(dp);
	if (ret)
		return ret;

	FUNC5(dp);
	FUNC4(dp);
	return 0;
}