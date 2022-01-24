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
struct intel_runtime_pm {int /*<<< orphan*/  kdev; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_runtime_pm*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_runtime_pm*) ; 

intel_wakeref_t FUNC4(struct intel_runtime_pm *rpm)
{
	FUNC0(rpm);
	FUNC2(rpm->kdev);

	FUNC1(rpm, true);

	return FUNC3(rpm);
}