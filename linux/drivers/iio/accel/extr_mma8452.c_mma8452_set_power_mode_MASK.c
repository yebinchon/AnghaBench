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
typedef  int u8 ;
struct mma8452_data {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMA8452_CTRL_REG2 ; 
 int MMA8452_CTRL_REG2_MODS_MASK ; 
 int MMA8452_CTRL_REG2_MODS_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mma8452_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct mma8452_data *data, u8 mode)
{
	int reg;

	reg = FUNC0(data->client,
				       MMA8452_CTRL_REG2);
	if (reg < 0)
		return reg;

	reg &= ~MMA8452_CTRL_REG2_MODS_MASK;
	reg |= mode << MMA8452_CTRL_REG2_MODS_SHIFT;

	return FUNC1(data, MMA8452_CTRL_REG2, reg);
}