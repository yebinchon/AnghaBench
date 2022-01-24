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
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct nct6775_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nct6775_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static u16 FUNC4(struct nct6775_data *data, u16 reg)
{
	int res, word_sized = FUNC1(data, reg);

	FUNC2(data, reg);
	FUNC3(reg & 0xff, data->addr + ADDR_REG_OFFSET);
	res = FUNC0(data->addr + DATA_REG_OFFSET);
	if (word_sized) {
		FUNC3((reg & 0xff) + 1,
		       data->addr + ADDR_REG_OFFSET);
		res = (res << 8) + FUNC0(data->addr + DATA_REG_OFFSET);
	}
	return res;
}