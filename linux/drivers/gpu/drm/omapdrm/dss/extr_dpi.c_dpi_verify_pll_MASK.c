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
struct dss_pll {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dss_pll*) ; 
 int FUNC1 (struct dss_pll*) ; 

__attribute__((used)) static int FUNC2(struct dss_pll *pll)
{
	int r;

	/* do initial setup with the PLL to see if it is operational */

	r = FUNC1(pll);
	if (r)
		return r;

	FUNC0(pll);

	return 0;
}