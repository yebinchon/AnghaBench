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
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  PSCI_CONDUIT_HVC ; 
 int /*<<< orphan*/  PSCI_CONDUIT_SMC ; 
 scalar_t__ FUNC0 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static int FUNC5(struct device_node *np)
{
	const char *method;

	FUNC1("probing for conduit method from DT.\n");

	if (FUNC0(np, "method", &method)) {
		FUNC2("missing \"method\" property\n");
		return -ENXIO;
	}

	if (!FUNC4("hvc", method)) {
		FUNC3(PSCI_CONDUIT_HVC);
	} else if (!FUNC4("smc", method)) {
		FUNC3(PSCI_CONDUIT_SMC);
	} else {
		FUNC2("invalid \"method\" property: %s\n", method);
		return -EINVAL;
	}
	return 0;
}