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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int EINVAL ; 
 int PAYLOAD_ARG_CNT ; 
 int /*<<< orphan*/  PM_FPGA_GET_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(u32 *value)
{
	u32 ret_payload[PAYLOAD_ARG_CNT];
	int ret;

	if (!value)
		return -EINVAL;

	ret = FUNC0(PM_FPGA_GET_STATUS, 0, 0, 0, 0, ret_payload);
	*value = ret_payload[1];

	return ret;
}