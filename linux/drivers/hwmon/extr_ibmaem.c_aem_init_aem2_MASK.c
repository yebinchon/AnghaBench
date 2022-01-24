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
struct aem_ipmi_data {int /*<<< orphan*/  bmc_device; } ;
struct aem_find_instance_resp {int major; int /*<<< orphan*/  module_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aem_ipmi_data*,struct aem_find_instance_resp*,int) ; 
 int FUNC1 (struct aem_ipmi_data*,struct aem_find_instance_resp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static void FUNC3(struct aem_ipmi_data *probe)
{
	struct aem_find_instance_resp fi_resp;
	int err;
	int i = 0;

	while (!FUNC0(probe, &fi_resp, i)) {
		if (fi_resp.major != 2) {
			FUNC2(probe->bmc_device,
				"Unknown AEM v%d; please report this to the maintainer.\n",
				fi_resp.major);
			i++;
			continue;
		}
		err = FUNC1(probe, &fi_resp);
		if (err) {
			FUNC2(probe->bmc_device,
				"Error %d initializing AEM2 0x%X\n",
				err, fi_resp.module_handle);
		}
		i++;
	}
}