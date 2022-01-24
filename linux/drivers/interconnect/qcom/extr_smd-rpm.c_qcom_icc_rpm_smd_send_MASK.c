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
typedef  int u32 ;
struct icc_rpm_smd_req {int /*<<< orphan*/  value; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int RPM_KEY_BW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  icc_smd_rpm ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int,struct icc_rpm_smd_req*,int) ; 

int FUNC2(int ctx, int rsc_type, int id, u32 val)
{
	struct icc_rpm_smd_req req = {
		.key = FUNC0(RPM_KEY_BW),
		.nbytes = FUNC0(sizeof(u32)),
		.value = FUNC0(val),
	};

	return FUNC1(icc_smd_rpm, ctx, rsc_type, id, &req,
				  sizeof(req));
}