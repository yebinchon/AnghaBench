#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int CONDUIT_HVC ; 
 int CONDUIT_INVALID ; 
 int CONDUIT_SMC ; 
 int /*<<< orphan*/  CONFIG_ACPI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_disabled ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * sdei_firmware_call ; 
 int /*<<< orphan*/  sdei_smccc_hvc ; 
 int /*<<< orphan*/  sdei_smccc_smc ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	const char *method;
	struct device_node *np = pdev->dev.of_node;

	sdei_firmware_call = NULL;
	if (np) {
		if (FUNC2(np, "method", &method)) {
			FUNC3("missing \"method\" property\n");
			return CONDUIT_INVALID;
		}

		if (!FUNC4("hvc", method)) {
			sdei_firmware_call = &sdei_smccc_hvc;
			return CONDUIT_HVC;
		} else if (!FUNC4("smc", method)) {
			sdei_firmware_call = &sdei_smccc_smc;
			return CONDUIT_SMC;
		}

		FUNC3("invalid \"method\" property: %s\n", method);
	} else if (FUNC0(CONFIG_ACPI) && !acpi_disabled) {
		if (FUNC1()) {
			sdei_firmware_call = &sdei_smccc_hvc;
			return CONDUIT_HVC;
		} else {
			sdei_firmware_call = &sdei_smccc_smc;
			return CONDUIT_SMC;
		}
	}

	return CONDUIT_INVALID;
}