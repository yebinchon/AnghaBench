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
struct smu_simple_cmd {int dummy; } ;
struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; int /*<<< orphan*/  tm_wday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SMU_CMD_RTC_COMMAND ; 
 int /*<<< orphan*/  SMU_CMD_RTC_SET_DATETIME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * smu ; 
 int FUNC1 (struct smu_simple_cmd*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct smu_simple_cmd*) ; 

int FUNC3(struct rtc_time *time, int spinwait)
{
	struct smu_simple_cmd cmd;
	int rc;

	if (smu == NULL)
		return -ENODEV;

	rc = FUNC1(&cmd, SMU_CMD_RTC_COMMAND, 8, NULL, NULL,
			      SMU_CMD_RTC_SET_DATETIME,
			      FUNC0(time->tm_sec),
			      FUNC0(time->tm_min),
			      FUNC0(time->tm_hour),
			      time->tm_wday,
			      FUNC0(time->tm_mday),
			      FUNC0(time->tm_mon) + 1,
			      FUNC0(time->tm_year - 100));
	if (rc)
		return rc;
	FUNC2(&cmd);

	return 0;
}