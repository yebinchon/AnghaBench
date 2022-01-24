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
struct intel_runtime_pm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void
FUNC3(struct intel_runtime_pm *rpm, int wakeref_count)
{
	FUNC1(rpm);
	FUNC0(!FUNC2(wakeref_count),
		  "RPM raw-wakeref not held\n");
}