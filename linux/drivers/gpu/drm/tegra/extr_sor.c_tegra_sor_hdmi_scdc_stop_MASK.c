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
struct tegra_sor {int /*<<< orphan*/  scdc; scalar_t__ scdc_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_sor*) ; 

__attribute__((used)) static void FUNC2(struct tegra_sor *sor)
{
	if (sor->scdc_enabled) {
		FUNC0(&sor->scdc);
		FUNC1(sor);
	}
}