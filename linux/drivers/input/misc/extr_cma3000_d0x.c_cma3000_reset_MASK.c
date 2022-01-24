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
struct cma3000_accl_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct cma3000_accl_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CMA3000_RSTR ; 
 int /*<<< orphan*/  FUNC1 (struct cma3000_accl_data*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  CMA3000_STATUS ; 
 int CMA3000_STATUS_PERR ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct cma3000_accl_data *data)
{
	int val;

	/* Reset sequence */
	FUNC1(data, CMA3000_RSTR, 0x02, "Reset");
	FUNC1(data, CMA3000_RSTR, 0x0A, "Reset");
	FUNC1(data, CMA3000_RSTR, 0x04, "Reset");

	/* Settling time delay */
	FUNC3(10);

	val = FUNC0(data, CMA3000_STATUS, "Status");
	if (val < 0) {
		FUNC2(data->dev, "Reset failed\n");
		return val;
	}

	if (val & CMA3000_STATUS_PERR) {
		FUNC2(data->dev, "Parity Error\n");
		return -EIO;
	}

	return 0;
}