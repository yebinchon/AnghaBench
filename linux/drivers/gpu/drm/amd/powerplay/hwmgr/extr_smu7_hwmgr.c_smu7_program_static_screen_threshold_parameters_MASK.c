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
struct smu7_hwmgr {int /*<<< orphan*/  static_screen_threshold; int /*<<< orphan*/  static_screen_threshold_unit; } ;
struct pp_hwmgr {int /*<<< orphan*/  device; scalar_t__ backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGS_IND_REG__SMC ; 
 int /*<<< orphan*/  CG_STATIC_SCREEN_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATIC_SCREEN_THRESHOLD ; 
 int /*<<< orphan*/  STATIC_SCREEN_THRESHOLD_UNIT ; 

__attribute__((used)) static int FUNC1(
							struct pp_hwmgr *hwmgr)
{
	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

	/* Set static screen threshold unit */
	FUNC0(hwmgr->device, CGS_IND_REG__SMC,
			CG_STATIC_SCREEN_PARAMETER, STATIC_SCREEN_THRESHOLD_UNIT,
			data->static_screen_threshold_unit);
	/* Set static screen threshold */
	FUNC0(hwmgr->device, CGS_IND_REG__SMC,
			CG_STATIC_SCREEN_PARAMETER, STATIC_SCREEN_THRESHOLD,
			data->static_screen_threshold);

	return 0;
}