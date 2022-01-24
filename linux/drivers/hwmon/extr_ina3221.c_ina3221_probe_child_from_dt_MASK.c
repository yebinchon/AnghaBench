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
typedef  size_t u32 ;
struct ina3221_input {int disconnected; size_t shunt_resistor; int /*<<< orphan*/  label; } ;
struct ina3221_data {struct ina3221_input* inputs; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t INA3221_CHANNEL3 ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device_node*,char*,size_t*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				       struct device_node *child,
				       struct ina3221_data *ina)
{
	struct ina3221_input *input;
	u32 val;
	int ret;

	ret = FUNC3(child, "reg", &val);
	if (ret) {
		FUNC0(dev, "missing reg property of %pOFn\n", child);
		return ret;
	} else if (val > INA3221_CHANNEL3) {
		FUNC0(dev, "invalid reg %d of %pOFn\n", val, child);
		return ret;
	}

	input = &ina->inputs[val];

	/* Log the disconnected channel input */
	if (!FUNC1(child)) {
		input->disconnected = true;
		return 0;
	}

	/* Save the connected input label if available */
	FUNC2(child, "label", &input->label);

	/* Overwrite default shunt resistor value optionally */
	if (!FUNC3(child, "shunt-resistor-micro-ohms", &val)) {
		if (val < 1 || val > INT_MAX) {
			FUNC0(dev, "invalid shunt resistor value %u of %pOFn\n",
				val, child);
			return -EINVAL;
		}
		input->shunt_resistor = val;
	}

	return 0;
}