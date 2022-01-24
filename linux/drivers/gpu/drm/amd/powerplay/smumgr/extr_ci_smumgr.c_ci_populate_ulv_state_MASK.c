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
struct pp_hwmgr {int dummy; } ;
typedef  int /*<<< orphan*/  SMU7_Discrete_Ulv ;

/* Variables and functions */
 int FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct pp_hwmgr *hwmgr,
		 SMU7_Discrete_Ulv *ulv_level)
{
	return FUNC0(hwmgr, ulv_level);
}