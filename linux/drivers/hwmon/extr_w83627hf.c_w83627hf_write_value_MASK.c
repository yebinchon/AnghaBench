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
struct w83627hf_data {int /*<<< orphan*/  lock; scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ W83781D_ADDR_REG_OFFSET ; 
 scalar_t__ W83781D_DATA_REG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct w83627hf_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct w83627hf_data*,int) ; 

__attribute__((used)) static int FUNC5(struct w83627hf_data *data, u16 reg, u16 value)
{
	int word_sized;

	FUNC0(&data->lock);
	word_sized = (((reg & 0xff00) == 0x100)
		   || ((reg & 0xff00) == 0x200))
		  && (((reg & 0x00ff) == 0x53)
		   || ((reg & 0x00ff) == 0x55));
	FUNC4(data, reg);
	FUNC2(reg & 0xff, data->addr + W83781D_ADDR_REG_OFFSET);
	if (word_sized) {
		FUNC2(value >> 8,
		       data->addr + W83781D_DATA_REG_OFFSET);
		FUNC2((reg & 0xff) + 1,
		       data->addr + W83781D_ADDR_REG_OFFSET);
	}
	FUNC2(value & 0xff,
	       data->addr + W83781D_DATA_REG_OFFSET);
	FUNC3(data, reg);
	FUNC1(&data->lock);
	return 0;
}