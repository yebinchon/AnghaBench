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
struct fsi_master_acf {int /*<<< orphan*/  gpio_data; int /*<<< orphan*/  gpio_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  gpio_tra_bit; int /*<<< orphan*/  gpio_tra_dreg; int /*<<< orphan*/  gpio_tra_vreg; int /*<<< orphan*/  gpio_trans; int /*<<< orphan*/  gpio_dat_bit; int /*<<< orphan*/  gpio_dat_dreg; int /*<<< orphan*/  gpio_dat_vreg; int /*<<< orphan*/  gpio_clk_bit; int /*<<< orphan*/  gpio_clk_dreg; int /*<<< orphan*/  gpio_clk_vreg; int /*<<< orphan*/  gpio_enable; int /*<<< orphan*/  gpio_mux; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct fsi_master_acf *master)
{

	int rc;

	/* This aren't under ColdFire control, just set them up appropriately */
	FUNC3(master->gpio_mux, 1);
	FUNC3(master->gpio_enable, 1);

	/* Those are under ColdFire control, let it configure them */
	rc = FUNC0(master->gpio_clk, &master->gpio_clk_vreg,
					 &master->gpio_clk_dreg, &master->gpio_clk_bit);
	if (rc) {
		FUNC2(master->dev, "failed to assign clock gpio to coprocessor\n");
		return rc;
	}
	rc = FUNC0(master->gpio_data, &master->gpio_dat_vreg,
					 &master->gpio_dat_dreg, &master->gpio_dat_bit);
	if (rc) {
		FUNC2(master->dev, "failed to assign data gpio to coprocessor\n");
		FUNC1(master->gpio_clk);
		return rc;
	}
	rc = FUNC0(master->gpio_trans, &master->gpio_tra_vreg,
					 &master->gpio_tra_dreg, &master->gpio_tra_bit);
	if (rc) {
		FUNC2(master->dev, "failed to assign trans gpio to coprocessor\n");
		FUNC1(master->gpio_clk);
		FUNC1(master->gpio_data);
		return rc;
	}
	return 0;
}