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
struct i3c_master_controller {int dummy; } ;
struct i2c_dev_desc {int dummy; } ;
struct dw_i3c_master {int /*<<< orphan*/  free_pos; scalar_t__* addrs; int /*<<< orphan*/  datstartaddr; scalar_t__ regs; } ;
struct dw_i3c_i2c_dev_data {size_t index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 struct i3c_master_controller* FUNC2 (struct i2c_dev_desc*) ; 
 struct dw_i3c_i2c_dev_data* FUNC3 (struct i2c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_dev_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_i3c_i2c_dev_data*) ; 
 struct dw_i3c_master* FUNC6 (struct i3c_master_controller*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct i2c_dev_desc *dev)
{
	struct dw_i3c_i2c_dev_data *data = FUNC3(dev);
	struct i3c_master_controller *m = FUNC2(dev);
	struct dw_i3c_master *master = FUNC6(m);

	FUNC7(0,
	       master->regs +
	       FUNC1(master->datstartaddr, data->index));

	FUNC4(dev, NULL);
	master->addrs[data->index] = 0;
	master->free_pos |= FUNC0(data->index);
	FUNC5(data);
}