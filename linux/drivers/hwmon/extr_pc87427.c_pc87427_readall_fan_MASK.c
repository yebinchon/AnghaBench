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
struct pc87427_data {int* address; int /*<<< orphan*/ * fan_status; void** fan_min; void** fan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t LD_FAN ; 
 scalar_t__ PC87427_REG_BANK ; 
 scalar_t__ PC87427_REG_FAN ; 
 scalar_t__ PC87427_REG_FAN_MIN ; 
 scalar_t__ PC87427_REG_FAN_STATUS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct pc87427_data *data, u8 nr)
{
	int iobase = data->address[LD_FAN];

	FUNC3(FUNC0(nr), iobase + PC87427_REG_BANK);
	data->fan[nr] = FUNC2(iobase + PC87427_REG_FAN);
	data->fan_min[nr] = FUNC2(iobase + PC87427_REG_FAN_MIN);
	data->fan_status[nr] = FUNC1(iobase + PC87427_REG_FAN_STATUS);
	/* Clear fan alarm bits */
	FUNC3(data->fan_status[nr], iobase + PC87427_REG_FAN_STATUS);
}