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
struct intel_uncore_forcewake_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_CLEAR ; 
 int /*<<< orphan*/  FORCEWAKE_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore_forcewake_domain const*) ; 
 scalar_t__ FUNC1 (struct intel_uncore_forcewake_domain const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore_forcewake_domain const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(const struct intel_uncore_forcewake_domain *d)
{
	if (FUNC2(!FUNC3(d, FORCEWAKE_KERNEL)))
		return;

	if (FUNC1(d, ACK_CLEAR))
		FUNC0(d);
}