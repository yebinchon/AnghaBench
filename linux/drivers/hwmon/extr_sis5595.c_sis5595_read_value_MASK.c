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
typedef  int /*<<< orphan*/  u8 ;
struct sis5595_data {int /*<<< orphan*/  lock; scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ SIS5595_ADDR_REG_OFFSET ; 
 scalar_t__ SIS5595_DATA_REG_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct sis5595_data *data, u8 reg)
{
	int res;

	FUNC1(&data->lock);
	FUNC3(reg, data->addr + SIS5595_ADDR_REG_OFFSET);
	res = FUNC0(data->addr + SIS5595_DATA_REG_OFFSET);
	FUNC2(&data->lock);
	return res;
}