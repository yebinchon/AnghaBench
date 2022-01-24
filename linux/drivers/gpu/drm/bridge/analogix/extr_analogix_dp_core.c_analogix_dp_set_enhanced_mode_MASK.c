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
struct analogix_dp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct analogix_dp_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct analogix_dp_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct analogix_dp_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct analogix_dp_device *dp)
{
	u8 data;
	int ret;

	ret = FUNC2(dp, &data);
	if (ret < 0)
		return ret;

	ret = FUNC1(dp, data);
	if (ret < 0)
		return ret;

	FUNC0(dp, data);

	return 0;
}