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
struct omapdss_comp_node {int /*<<< orphan*/  node; int /*<<< orphan*/  compat; scalar_t__ dss_core_component; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC2(struct omapdss_comp_node *comp)
{
	if (comp->dss_core_component)
		return true;
	if (!FUNC1(comp->compat, "omapdss,"))
		return true;
	if (FUNC0(comp->node))
		return true;

	return false;
}