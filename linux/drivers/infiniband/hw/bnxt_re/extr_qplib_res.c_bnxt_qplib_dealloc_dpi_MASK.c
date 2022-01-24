#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bnxt_qplib_res {TYPE_1__* pdev; } ;
struct bnxt_qplib_dpi_tbl {size_t max; int /*<<< orphan*/ ** app_tbl; int /*<<< orphan*/  tbl; } ;
struct bnxt_qplib_dpi {size_t dpi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_qplib_dpi*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (size_t,int /*<<< orphan*/ ) ; 

int FUNC3(struct bnxt_qplib_res *res,
			   struct bnxt_qplib_dpi_tbl *dpit,
			   struct bnxt_qplib_dpi     *dpi)
{
	if (dpi->dpi >= dpit->max) {
		FUNC0(&res->pdev->dev, "Invalid DPI? dpi = %d\n", dpi->dpi);
		return -EINVAL;
	}
	if (FUNC2(dpi->dpi, dpit->tbl)) {
		FUNC0(&res->pdev->dev, "Freeing an unused DPI? dpi = %d\n",
			 dpi->dpi);
		return -EINVAL;
	}
	if (dpit->app_tbl)
		dpit->app_tbl[dpi->dpi] = NULL;
	FUNC1(dpi, 0, sizeof(*dpi));

	return 0;
}