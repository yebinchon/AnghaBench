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
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_runtime_pm*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_runtime_pm*) ; 

__attribute__((used)) static intel_wakeref_t FUNC4(struct intel_runtime_pm *rpm,
					      bool wakelock)
{
	int ret;

	ret = FUNC2(rpm->kdev);
	FUNC0(ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);

	FUNC1(rpm, wakelock);

	return FUNC3(rpm);
}