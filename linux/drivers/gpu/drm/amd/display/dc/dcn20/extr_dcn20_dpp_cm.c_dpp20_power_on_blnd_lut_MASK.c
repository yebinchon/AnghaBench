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
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLNDGAM_MEM_PWR_FORCE ; 
 int /*<<< orphan*/  CM_MEM_PWR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dcn20_dpp* FUNC1 (struct dpp*) ; 

__attribute__((used)) static void FUNC2(
	struct dpp *dpp_base,
	bool power_on)
{
	struct dcn20_dpp *dpp = FUNC1(dpp_base);

	FUNC0(CM_MEM_PWR_CTRL, 0,
			BLNDGAM_MEM_PWR_FORCE, power_on == true ? 0:1);

}