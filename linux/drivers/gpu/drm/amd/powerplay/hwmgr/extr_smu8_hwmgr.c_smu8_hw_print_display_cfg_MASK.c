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
struct cc6_settings {int /*<<< orphan*/  cpu_pstate_separation_time; int /*<<< orphan*/  nb_pstate_switch_disable; int /*<<< orphan*/  cpu_pstate_disable; int /*<<< orphan*/  cpu_cc6_disable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(
	const struct cc6_settings *cc6_settings)
{
	FUNC0("New Display Configuration:\n");

	FUNC0("   cpu_cc6_disable: %d\n",
			cc6_settings->cpu_cc6_disable);
	FUNC0("   cpu_pstate_disable: %d\n",
			cc6_settings->cpu_pstate_disable);
	FUNC0("   nb_pstate_switch_disable: %d\n",
			cc6_settings->nb_pstate_switch_disable);
	FUNC0("   cpu_pstate_separation_time: %d\n\n",
			cc6_settings->cpu_pstate_separation_time);
}