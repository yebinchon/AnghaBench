#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* entry; } ;
struct smu10_smumgr {TYPE_2__ smu_tables; } ;
struct pp_hwmgr {int /*<<< orphan*/ * smu_backend; } ;
struct TYPE_3__ {int /*<<< orphan*/  table; int /*<<< orphan*/  mc_addr; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 size_t SMU10_CLOCKTABLE ; 
 size_t SMU10_WMTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr)
{
	struct smu10_smumgr *priv =
			(struct smu10_smumgr *)(hwmgr->smu_backend);

	if (priv) {
		FUNC0(&priv->smu_tables.entry[SMU10_WMTABLE].handle,
					&priv->smu_tables.entry[SMU10_WMTABLE].mc_addr,
					&priv->smu_tables.entry[SMU10_WMTABLE].table);
		FUNC0(&priv->smu_tables.entry[SMU10_CLOCKTABLE].handle,
					&priv->smu_tables.entry[SMU10_CLOCKTABLE].mc_addr,
					&priv->smu_tables.entry[SMU10_CLOCKTABLE].table);
		FUNC1(hwmgr->smu_backend);
		hwmgr->smu_backend = NULL;
	}

	return 0;
}