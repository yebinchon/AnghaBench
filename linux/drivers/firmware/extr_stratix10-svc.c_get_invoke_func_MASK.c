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
typedef  int /*<<< orphan*/  svc_invoke_fn ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/ * svc_smccc_hvc ; 
 int /*<<< orphan*/ * svc_smccc_smc ; 

__attribute__((used)) static svc_invoke_fn *FUNC4(struct device *dev)
{
	const char *method;

	if (FUNC2(dev->of_node, "method", &method)) {
		FUNC1(dev, "missing \"method\" property\n");
		return FUNC0(-ENXIO);
	}

	if (!FUNC3(method, "smc"))
		return svc_smccc_smc;
	if (!FUNC3(method, "hvc"))
		return svc_smccc_hvc;

	FUNC1(dev, "invalid \"method\" property: %s\n", method);

	return FUNC0(-EINVAL);
}