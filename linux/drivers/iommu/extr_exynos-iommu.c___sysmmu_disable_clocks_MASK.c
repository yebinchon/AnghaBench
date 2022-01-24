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
struct sysmmu_drvdata {int /*<<< orphan*/  clk_master; int /*<<< orphan*/  clk; int /*<<< orphan*/  pclk; int /*<<< orphan*/  aclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sysmmu_drvdata *data)
{
	FUNC0(data->aclk);
	FUNC0(data->pclk);
	FUNC0(data->clk);
	FUNC0(data->clk_master);
}