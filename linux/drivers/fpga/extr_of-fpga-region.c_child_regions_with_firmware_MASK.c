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
 int /*<<< orphan*/  fpga_region_of_match ; 
 struct device_node* FUNC0 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct device_node*) ; 

__attribute__((used)) static int FUNC5(struct device_node *overlay)
{
	struct device_node *child_region;
	const char *child_firmware_name;
	int ret = 0;

	FUNC1(overlay);

	child_region = FUNC0(overlay, fpga_region_of_match);
	while (child_region) {
		if (!FUNC3(child_region, "firmware-name",
					     &child_firmware_name)) {
			ret = -EINVAL;
			break;
		}
		child_region = FUNC0(child_region,
						     fpga_region_of_match);
	}

	FUNC2(child_region);

	if (ret)
		FUNC4("firmware-name not allowed in child FPGA region: %pOF",
		       child_region);

	return ret;
}