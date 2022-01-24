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
struct dps310_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPS310_MEAS_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int DPS310_TMP_RDY ; 
 int EINTR ; 
 int FUNC2 (struct dps310_data*) ; 
 int FUNC3 (struct dps310_data*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct dps310_data *data)
{
	int rc;
	int rate;
	int ready;
	int timeout;

	if (FUNC4(&data->lock))
		return -EINTR;

	rate = FUNC2(data);
	timeout = FUNC1(rate);

	/* Poll for sensor readiness; base the timeout upon the sample rate. */
	rc = FUNC6(data->regmap, DPS310_MEAS_CFG, ready,
				      ready & DPS310_TMP_RDY,
				      FUNC0(timeout), timeout);
	if (rc < 0)
		goto done;

	rc = FUNC3(data);

done:
	FUNC5(&data->lock);
	return rc;
}