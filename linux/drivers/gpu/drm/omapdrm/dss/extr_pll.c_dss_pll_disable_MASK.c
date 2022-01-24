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
struct dss_pll {int /*<<< orphan*/  cinfo; int /*<<< orphan*/  clkin; scalar_t__ regulator; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct dss_pll*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dss_pll*) ; 

void FUNC4(struct dss_pll *pll)
{
	pll->ops->disable(pll);

	if (pll->regulator)
		FUNC2(pll->regulator);

	FUNC0(pll->clkin);

	FUNC1(&pll->cinfo, 0, sizeof(pll->cinfo));
}