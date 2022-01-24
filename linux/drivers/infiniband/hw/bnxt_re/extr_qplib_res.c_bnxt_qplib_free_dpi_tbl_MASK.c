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
struct bnxt_qplib_res {int /*<<< orphan*/  pdev; } ;
struct bnxt_qplib_dpi_tbl {scalar_t__ dbr_bar_reg_iomem; int /*<<< orphan*/  app_tbl; int /*<<< orphan*/  tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_qplib_dpi_tbl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct bnxt_qplib_res     *res,
				    struct bnxt_qplib_dpi_tbl *dpit)
{
	FUNC0(dpit->tbl);
	FUNC0(dpit->app_tbl);
	if (dpit->dbr_bar_reg_iomem)
		FUNC2(res->pdev, dpit->dbr_bar_reg_iomem);
	FUNC1(dpit, 0, sizeof(*dpit));
}