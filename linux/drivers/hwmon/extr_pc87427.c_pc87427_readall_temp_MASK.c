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
typedef  size_t u8 ;
struct pc87427_data {int* address; void** temp_status; void** temp_type; void** temp_crit; void** temp_min; void** temp_max; int /*<<< orphan*/ * temp; } ;

/* Variables and functions */
 void* FUNC0 (size_t) ; 
 size_t LD_TEMP ; 
 scalar_t__ PC87427_REG_BANK ; 
 scalar_t__ PC87427_REG_TEMP ; 
 scalar_t__ PC87427_REG_TEMP_CRIT ; 
 scalar_t__ PC87427_REG_TEMP_MAX ; 
 scalar_t__ PC87427_REG_TEMP_MIN ; 
 scalar_t__ PC87427_REG_TEMP_STATUS ; 
 scalar_t__ PC87427_REG_TEMP_TYPE ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct pc87427_data *data, u8 nr)
{
	int iobase = data->address[LD_TEMP];

	FUNC4(FUNC0(nr), iobase + PC87427_REG_BANK);
	data->temp[nr] = FUNC3(FUNC2(iobase + PC87427_REG_TEMP));
	data->temp_max[nr] = FUNC1(iobase + PC87427_REG_TEMP_MAX);
	data->temp_min[nr] = FUNC1(iobase + PC87427_REG_TEMP_MIN);
	data->temp_crit[nr] = FUNC1(iobase + PC87427_REG_TEMP_CRIT);
	data->temp_type[nr] = FUNC1(iobase + PC87427_REG_TEMP_TYPE);
	data->temp_status[nr] = FUNC1(iobase + PC87427_REG_TEMP_STATUS);
	/* Clear fan alarm bits */
	FUNC4(data->temp_status[nr], iobase + PC87427_REG_TEMP_STATUS);
}