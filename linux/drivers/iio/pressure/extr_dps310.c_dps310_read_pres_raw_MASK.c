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
typedef  int /*<<< orphan*/  val ;
typedef  int u8 ;
struct dps310_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  pressure_raw; int /*<<< orphan*/  regmap; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  DPS310_MEAS_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  DPS310_PRS_BASE ; 
 int DPS310_PRS_RDY ; 
 int EINTR ; 
 int FUNC2 (struct dps310_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct dps310_data *data)
{
	int rc;
	int rate;
	int ready;
	int timeout;
	s32 raw;
	u8 val[3];

	if (FUNC3(&data->lock))
		return -EINTR;

	rate = FUNC2(data);
	timeout = FUNC1(rate);

	/* Poll for sensor readiness; base the timeout upon the sample rate. */
	rc = FUNC6(data->regmap, DPS310_MEAS_CFG, ready,
				      ready & DPS310_PRS_RDY,
				      FUNC0(timeout), timeout);
	if (rc)
		goto done;

	rc = FUNC5(data->regmap, DPS310_PRS_BASE, val, sizeof(val));
	if (rc < 0)
		goto done;

	raw = (val[0] << 16) | (val[1] << 8) | val[2];
	data->pressure_raw = FUNC7(raw, 23);

done:
	FUNC4(&data->lock);
	return rc;
}