#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pp_hwmgr {int dummy; } ;
struct TYPE_3__ {int numEntries; } ;
typedef  TYPE_1__ ATOM_PPLIB_VCE_State_Table ;
typedef  int /*<<< orphan*/  ATOM_PPLIB_POWERPLAYTABLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct pp_hwmgr*) ; 
 TYPE_1__* FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(
						  struct pp_hwmgr *hwmgr)
{
	const ATOM_PPLIB_POWERPLAYTABLE *table =
					     FUNC0(hwmgr);
	const ATOM_PPLIB_VCE_State_Table *vce_table =
				    FUNC1(hwmgr, table);

	if (vce_table)
		return vce_table->numEntries;

	return 0;
}