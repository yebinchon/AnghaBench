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
typedef  int u16 ;
struct nct6775_data {scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ ADDR_REG_OFFSET ; 
 scalar_t__ DATA_REG_OFFSET ; 
 int FUNC0 (struct nct6775_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nct6775_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct nct6775_data *data, u16 reg, u16 value)
{
	int word_sized = FUNC0(data, reg);

	FUNC1(data, reg);
	FUNC2(reg & 0xff, data->addr + ADDR_REG_OFFSET);
	if (word_sized) {
		FUNC2(value >> 8, data->addr + DATA_REG_OFFSET);
		FUNC2((reg & 0xff) + 1,
		       data->addr + ADDR_REG_OFFSET);
	}
	FUNC2(value & 0xff, data->addr + DATA_REG_OFFSET);
	return 0;
}