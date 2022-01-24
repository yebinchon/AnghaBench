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
struct us5182d_data {int opmode; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int US5182D_OPMODE_MASK ; 
 int US5182D_OPMODE_SHIFT ; 
 int /*<<< orphan*/  US5182D_OPSTORE_SLEEP_TIME ; 
 int /*<<< orphan*/  US5182D_REG_CFG0 ; 
 int /*<<< orphan*/  US5182D_REG_MODE_STORE ; 
 int US5182D_STORE_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct us5182d_data *data, u8 mode)
{
	int ret;

	if (mode == data->opmode)
		return 0;

	ret = FUNC0(data->client, US5182D_REG_CFG0);
	if (ret < 0)
		return ret;

	/* update mode */
	ret = ret & ~US5182D_OPMODE_MASK;
	ret = ret | (mode << US5182D_OPMODE_SHIFT);

	/*
	 * After updating the operating mode, the chip requires that
	 * the operation is stored, by writing 1 in the STORE_MODE
	 * register (auto-clearing).
	 */
	ret = FUNC1(data->client, US5182D_REG_CFG0, ret);
	if (ret < 0)
		return ret;

	ret = FUNC1(data->client, US5182D_REG_MODE_STORE,
					US5182D_STORE_MODE);
	if (ret < 0)
		return ret;

	data->opmode = mode;
	FUNC2(US5182D_OPSTORE_SLEEP_TIME);

	return 0;
}