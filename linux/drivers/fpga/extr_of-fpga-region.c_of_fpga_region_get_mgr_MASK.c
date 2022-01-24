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
struct fpga_manager {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct fpga_manager* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node*,char*) ; 
 struct fpga_manager* FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fpga_manager *FUNC7(struct device_node *np)
{
	struct device_node  *mgr_node;
	struct fpga_manager *mgr;

	FUNC4(np);
	while (np) {
		if (FUNC1(np, "fpga-region")) {
			mgr_node = FUNC6(np, "fpga-mgr", 0);
			if (mgr_node) {
				mgr = FUNC2(mgr_node);
				FUNC5(mgr_node);
				FUNC5(np);
				return mgr;
			}
		}
		np = FUNC3(np);
	}
	FUNC5(np);

	return FUNC0(-EINVAL);
}