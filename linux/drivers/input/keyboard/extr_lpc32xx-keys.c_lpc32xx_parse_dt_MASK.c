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
typedef  scalar_t__ u32 ;
struct lpc32xx_kscan_drv {int /*<<< orphan*/  scan_delay; int /*<<< orphan*/  deb_clks; int /*<<< orphan*/  row_shift; scalar_t__ matrix_sz; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct device*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				      struct lpc32xx_kscan_drv *kscandat)
{
	struct device_node *np = dev->of_node;
	u32 rows = 0, columns = 0;
	int err;

	err = FUNC2(dev, &rows, &columns);
	if (err)
		return err;
	if (rows != columns) {
		FUNC0(dev, "rows and columns must be equal!\n");
		return -EINVAL;
	}

	kscandat->matrix_sz = rows;
	kscandat->row_shift = FUNC1(columns);

	FUNC3(np, "nxp,debounce-delay-ms", &kscandat->deb_clks);
	FUNC3(np, "nxp,scan-delay-ms", &kscandat->scan_delay);
	if (!kscandat->deb_clks || !kscandat->scan_delay) {
		FUNC0(dev, "debounce or scan delay not specified\n");
		return -EINVAL;
	}

	return 0;
}