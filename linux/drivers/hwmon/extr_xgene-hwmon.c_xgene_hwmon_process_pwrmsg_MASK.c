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
struct xgene_hwmon_dev {int dummy; } ;
struct slimpro_resp_msg {int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PWRMGMT_SUBTYPE_TPC ; 
 scalar_t__ TPC_ALARM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_hwmon_dev*,struct slimpro_resp_msg*) ; 

__attribute__((used)) static void FUNC3(struct xgene_hwmon_dev *ctx,
				       struct slimpro_resp_msg *amsg)
{
	if ((FUNC0(amsg->msg) == PWRMGMT_SUBTYPE_TPC) &&
	    (FUNC1(amsg->msg) == TPC_ALARM))
		FUNC2(ctx, amsg);
}