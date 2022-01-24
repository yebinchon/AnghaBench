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
struct iram_table_v_2_2 {int dummy; } ;
struct iram_table_v_2 {int dummy; } ;
struct dmcu_iram_parameters {int dummy; } ;
struct TYPE_3__ {int abm_version; } ;
struct dmcu {TYPE_2__* funcs; TYPE_1__ dmcu_version; } ;
typedef  int /*<<< orphan*/  ram_table ;
struct TYPE_4__ {int (* load_iram ) (struct dmcu*,int,char*,int) ;int /*<<< orphan*/  (* is_dmcu_initialized ) (struct dmcu*) ;} ;

/* Variables and functions */
 int IRAM_RESERVE_AREA_END_V2 ; 
 int IRAM_RESERVE_AREA_START_V2 ; 
 int IRAM_RESERVE_AREA_START_V2_2 ; 
 int IRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct iram_table_v_2*,struct dmcu_iram_parameters) ; 
 int /*<<< orphan*/  FUNC1 (struct iram_table_v_2_2*,struct dmcu_iram_parameters) ; 
 int /*<<< orphan*/  FUNC2 (struct iram_table_v_2_2*,struct dmcu_iram_parameters) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dmcu*) ; 
 int FUNC5 (struct dmcu*,int,char*,int) ; 
 int FUNC6 (struct dmcu*,int,char*,int) ; 
 int FUNC7 (struct dmcu*,int,char*,int) ; 
 int FUNC8 (struct dmcu*,int,char*,int) ; 

bool FUNC9(struct dmcu *dmcu,
	struct dmcu_iram_parameters params)
{
	unsigned char ram_table[IRAM_SIZE];
	bool result = false;

	if (dmcu == NULL)
		return false;

	if (!dmcu->funcs->is_dmcu_initialized(dmcu))
		return true;

	FUNC3(&ram_table, 0, sizeof(ram_table));

	if (dmcu->dmcu_version.abm_version == 0x23) {
		FUNC2((struct iram_table_v_2_2 *)ram_table, params);

		result = dmcu->funcs->load_iram(
				dmcu, 0, (char *)(&ram_table), IRAM_RESERVE_AREA_START_V2_2);
	} else if (dmcu->dmcu_version.abm_version == 0x22) {
		FUNC1((struct iram_table_v_2_2 *)ram_table, params);

		result = dmcu->funcs->load_iram(
				dmcu, 0, (char *)(&ram_table), IRAM_RESERVE_AREA_START_V2_2);
	} else {
		FUNC0((struct iram_table_v_2 *)ram_table, params);

		result = dmcu->funcs->load_iram(
				dmcu, 0, (char *)(&ram_table), IRAM_RESERVE_AREA_START_V2);

		if (result)
			result = dmcu->funcs->load_iram(
					dmcu, IRAM_RESERVE_AREA_END_V2 + 1,
					(char *)(&ram_table) + IRAM_RESERVE_AREA_END_V2 + 1,
					sizeof(ram_table) - IRAM_RESERVE_AREA_END_V2 - 1);
	}

	return result;
}