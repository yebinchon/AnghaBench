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
struct tegra_hsp_doorbell {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HSP_DB_ENABLE ; 
 int /*<<< orphan*/  TEGRA_HSP_DB_MASTER_CCPLEX ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct tegra_hsp_doorbell *db)
{
	u32 value;

	value = FUNC1(&db->channel, HSP_DB_ENABLE);

	return (value & FUNC0(TEGRA_HSP_DB_MASTER_CCPLEX)) != 0;
}