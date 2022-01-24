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
struct intel_wakeref_auto {int /*<<< orphan*/  wakeref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_wakeref_auto*,int /*<<< orphan*/ ) ; 

void FUNC2(struct intel_wakeref_auto *wf)
{
	FUNC1(wf, 0);
	FUNC0(wf->wakeref);
}