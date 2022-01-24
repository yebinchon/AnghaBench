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
struct intel_runtime_pm {struct device* kdev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_runtime_pm*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_runtime_pm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct intel_runtime_pm *rpm,
				   intel_wakeref_t wref,
				   bool wakelock)
{
	struct device *kdev = rpm->kdev;

	FUNC3(rpm, wref);

	FUNC0(rpm, wakelock);

	FUNC1(kdev);
	FUNC2(kdev);
}