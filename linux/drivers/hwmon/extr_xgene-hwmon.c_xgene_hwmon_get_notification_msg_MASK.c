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
typedef  scalar_t__ u32 ;
struct xgene_hwmon_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWRMGMT_SUBTYPE_TPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPC_GET_ALARM ; 
 int FUNC1 (struct xgene_hwmon_dev*,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(struct xgene_hwmon_dev *ctx,
					    u32 *amsg)
{
	u32 msg[3];
	int rc;

	msg[0] = FUNC0(PWRMGMT_SUBTYPE_TPC, TPC_GET_ALARM, 0);
	msg[1] = 0;
	msg[2] = 0;

	rc = FUNC1(ctx, msg);
	if (rc < 0)
		return rc;

	amsg[0] = msg[0];
	amsg[1] = msg[1];
	amsg[2] = msg[2];

	return rc;
}