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
struct dpu_encoder_wait_info {scalar_t__ timeout_ms; int /*<<< orphan*/  atomic_cnt; int /*<<< orphan*/ * wq; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(
		int32_t drm_id,
		int32_t hw_id,
		struct dpu_encoder_wait_info *info)
{
	int rc = 0;
	s64 expected_time = FUNC2(FUNC1()) + info->timeout_ms;
	s64 jiffies = FUNC3(info->timeout_ms);
	s64 time;

	do {
		rc = FUNC5(*(info->wq),
				FUNC0(info->atomic_cnt) == 0, jiffies);
		time = FUNC2(FUNC1());

		FUNC4(drm_id, hw_id, rc, time,
						 expected_time,
						 FUNC0(info->atomic_cnt));
	/* If we timed out, counter is valid and time is less, wait again */
	} while (FUNC0(info->atomic_cnt) && (rc == 0) &&
			(time < expected_time));

	return rc;
}