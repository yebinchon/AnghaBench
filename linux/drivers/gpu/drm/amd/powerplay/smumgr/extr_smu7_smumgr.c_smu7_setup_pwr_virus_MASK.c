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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pwr_virus_section1 ; 
 int /*<<< orphan*/  pwr_virus_section2 ; 
 int /*<<< orphan*/  pwr_virus_section3 ; 
 int /*<<< orphan*/  pwr_virus_section4 ; 
 int /*<<< orphan*/  pwr_virus_section5 ; 
 int /*<<< orphan*/  pwr_virus_section6 ; 
 int /*<<< orphan*/  pwr_virus_table_post ; 
 int /*<<< orphan*/  pwr_virus_table_pre ; 

int FUNC3(struct pp_hwmgr *hwmgr)
{
	FUNC2(hwmgr, pwr_virus_table_pre, FUNC0(pwr_virus_table_pre));
	FUNC1(hwmgr, &pwr_virus_section1);
	FUNC1(hwmgr, &pwr_virus_section2);
	FUNC1(hwmgr, &pwr_virus_section3);
	FUNC1(hwmgr, &pwr_virus_section4);
	FUNC1(hwmgr, &pwr_virus_section5);
	FUNC1(hwmgr, &pwr_virus_section6);
	FUNC2(hwmgr, pwr_virus_table_post, FUNC0(pwr_virus_table_post));

	return 0;
}