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
typedef  int u32 ;
struct vc4_perfmon {unsigned int ncounters; int* events; } ;
struct vc4_dev {struct vc4_perfmon* active_perfmon; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_PCTRC ; 
 int /*<<< orphan*/  V3D_PCTRE ; 
 int V3D_PCTRE_EN ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct vc4_dev *vc4, struct vc4_perfmon *perfmon)
{
	unsigned int i;
	u32 mask;

	if (FUNC3(!perfmon || vc4->active_perfmon))
		return;

	for (i = 0; i < perfmon->ncounters; i++)
		FUNC2(FUNC1(i), perfmon->events[i]);

	mask = FUNC0(perfmon->ncounters - 1, 0);
	FUNC2(V3D_PCTRC, mask);
	FUNC2(V3D_PCTRE, V3D_PCTRE_EN | mask);
	vc4->active_perfmon = perfmon;
}