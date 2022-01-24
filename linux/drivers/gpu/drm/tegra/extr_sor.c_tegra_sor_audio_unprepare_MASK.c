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
struct tegra_sor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOR_AUDIO_HDA_PRESENSE ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_sor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct tegra_sor *sor)
{
	FUNC0(sor, 0, SOR_AUDIO_HDA_PRESENSE);
}