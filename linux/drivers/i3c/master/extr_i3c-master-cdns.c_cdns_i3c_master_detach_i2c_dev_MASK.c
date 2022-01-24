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
struct cdns_i3c_master {int /*<<< orphan*/  free_rr_slots; scalar_t__ regs; } ;
struct cdns_i3c_i2c_dev_data {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DEVS_CTRL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct i3c_master_controller* FUNC2 (struct i2c_dev_desc*) ; 
 struct cdns_i3c_i2c_dev_data* FUNC3 (struct i2c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_dev_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cdns_i3c_i2c_dev_data*) ; 
 int FUNC6 (scalar_t__) ; 
 struct cdns_i3c_master* FUNC7 (struct i3c_master_controller*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct i2c_dev_desc *dev)
{
	struct i3c_master_controller *m = FUNC2(dev);
	struct cdns_i3c_master *master = FUNC7(m);
	struct cdns_i3c_i2c_dev_data *data = FUNC3(dev);

	FUNC8(FUNC6(master->regs + DEVS_CTRL) |
	       FUNC1(data->id),
	       master->regs + DEVS_CTRL);
	master->free_rr_slots |= FUNC0(data->id);

	FUNC4(dev, NULL);
	FUNC5(data);
}