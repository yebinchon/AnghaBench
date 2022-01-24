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
typedef  scalar_t__ u8 ;
struct abituguru_data {scalar_t__ addr; scalar_t__ uguru_ready; } ;

/* Variables and functions */
 scalar_t__ ABIT_UGURU_CMD ; 
 scalar_t__ ABIT_UGURU_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  ABIT_UGURU_RETRY_DELAY ; 
 int /*<<< orphan*/  ABIT_UGURU_STATUS_INPUT ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC1 (struct abituguru_data*) ; 
 scalar_t__ FUNC2 (struct abituguru_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct abituguru_data *data,
	u8 bank_addr, u8 sensor_addr, int retries)
{
	/*
	 * assume the caller does error handling itself if it has not requested
	 * any retries, and thus be quiet.
	 */
	int report_errors = retries;

	for (;;) {
		/*
		 * Make sure the uguru is ready and then send the bank address,
		 * after this the uguru is no longer "ready".
		 */
		if (FUNC1(data) != 0)
			return -EIO;
		FUNC3(bank_addr, data->addr + ABIT_UGURU_DATA);
		data->uguru_ready = 0;

		/*
		 * Wait till the uguru is ABIT_UGURU_STATUS_INPUT state again
		 * and send the sensor addr
		 */
		if (FUNC2(data, ABIT_UGURU_STATUS_INPUT)) {
			if (retries) {
				FUNC0(3, "timeout exceeded "
					"waiting for more input state, %d "
					"tries remaining\n", retries);
				FUNC5(TASK_UNINTERRUPTIBLE);
				FUNC4(ABIT_UGURU_RETRY_DELAY);
				retries--;
				continue;
			}
			if (report_errors)
				FUNC0(1, "timeout exceeded "
					"waiting for more input state "
					"(bank: %d)\n", (int)bank_addr);
			return -EBUSY;
		}
		FUNC3(sensor_addr, data->addr + ABIT_UGURU_CMD);
		return 0;
	}
}