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
typedef  int /*<<< orphan*/  u8 ;
struct adb_request {int /*<<< orphan*/ * arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ams_pmu_cmd ; 
 int /*<<< orphan*/  ams_pmu_req_complete ; 
 scalar_t__ FUNC1 (struct adb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  req_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(u8 reg, u8 value)
{
	static struct adb_request req;
	FUNC0(req_complete);

	req.arg = &req_complete;
	if (FUNC1(&req, ams_pmu_req_complete, 4, ams_pmu_cmd, 0x00, reg, value))
		return;

	FUNC2(&req_complete);
}