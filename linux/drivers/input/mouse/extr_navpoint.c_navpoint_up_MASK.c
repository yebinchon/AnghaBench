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
struct ssp_device {int /*<<< orphan*/  clk; } ;
struct navpoint {int /*<<< orphan*/  gpio; int /*<<< orphan*/  dev; struct ssp_device* ssp; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSCR0 ; 
 int /*<<< orphan*/  SSCR1 ; 
 int /*<<< orphan*/  SSSR ; 
 int SSSR_CSS ; 
 int /*<<< orphan*/  SSTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ssp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ssp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sscr0 ; 
 int /*<<< orphan*/  sscr1 ; 
 int /*<<< orphan*/  sssr ; 

__attribute__((used)) static void FUNC7(struct navpoint *navpoint)
{
	struct ssp_device *ssp = navpoint->ssp;
	int timeout;

	FUNC0(ssp->clk);

	FUNC6(ssp, SSCR1, sscr1);
	FUNC6(ssp, SSSR, sssr);
	FUNC6(ssp, SSTO, 0);
	FUNC6(ssp, SSCR0, sscr0);	/* SSCR0_SSE written last */

	/* Wait until SSP port is ready for slave clock operations */
	for (timeout = 100; timeout != 0; --timeout) {
		if (!(FUNC5(ssp, SSSR) & SSSR_CSS))
			break;
		FUNC4(1);
	}

	if (timeout == 0)
		FUNC1(navpoint->dev,
			"timeout waiting for SSSR[CSS] to clear\n");

	if (FUNC2(navpoint->gpio))
		FUNC3(navpoint->gpio, 1);
}