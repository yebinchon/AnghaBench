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
struct bma180_data {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMA180_CHIP_ID ; 
 int BMA180_ID_REG_VAL ; 
 int ENODEV ; 
 int FUNC0 (struct bma180_data*,int) ; 
 int FUNC1 (struct bma180_data*,int) ; 
 int FUNC2 (struct bma180_data*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct bma180_data *data)
{
	/* Try to read chip_id register. It must return 0x03. */
	int ret = FUNC3(data->client, BMA180_CHIP_ID);

	if (ret < 0)
		return ret;
	if (ret != BMA180_ID_REG_VAL)
		return -ENODEV;

	ret = FUNC2(data);
	if (ret)
		return ret;
	/*
	 * No serial transaction should occur within minimum 10 us
	 * after soft_reset command
	 */
	FUNC4(20);

	ret = FUNC0(data, false);
	if (ret)
		return ret;

	return FUNC1(data, false);
}