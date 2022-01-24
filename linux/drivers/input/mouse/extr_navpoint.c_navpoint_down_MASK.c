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
struct navpoint {int /*<<< orphan*/  gpio; struct ssp_device* ssp; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSCR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct navpoint *navpoint)
{
	struct ssp_device *ssp = navpoint->ssp;

	if (FUNC1(navpoint->gpio))
		FUNC2(navpoint->gpio, 0);

	FUNC3(ssp, SSCR0, 0);

	FUNC0(ssp->clk);
}