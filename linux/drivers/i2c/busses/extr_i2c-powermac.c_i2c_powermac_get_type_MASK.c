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
typedef  int u32 ;
typedef  int /*<<< orphan*/  tmp ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct device_node*) ; 
 scalar_t__ FUNC1 (struct device_node*,char*,int) ; 
 scalar_t__ FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 

__attribute__((used)) static bool FUNC4(struct i2c_adapter *adap,
					    struct device_node *node,
					    u32 addr, char *type, int type_size)
{
	char tmp[16];

	/* Note: we to _NOT_ want the standard
	 * i2c drivers to match with any of our powermac stuff
	 * unless they have been specifically modified to handle
	 * it on a case by case basis. For example, for thermal
	 * control, things like lm75 etc... shall match with their
	 * corresponding windfarm drivers, _NOT_ the generic ones,
	 * so we force a prefix of AAPL, onto the modalias to
	 * make that happen
	 */

	/* First try proper modalias */
	if (FUNC1(node, tmp, sizeof(tmp)) >= 0) {
		FUNC3(type, type_size, "MAC,%s", tmp);
		return true;
	}

	/* Now look for known workarounds */
	if (FUNC2(node, "deq")) {
		/* Apple uses address 0x34 for TAS3001 and 0x35 for TAS3004 */
		if (addr == 0x34) {
			FUNC3(type, type_size, "MAC,tas3001");
			return true;
		} else if (addr == 0x35) {
			FUNC3(type, type_size, "MAC,tas3004");
			return true;
		}
	}

	FUNC0(&adap->dev, "i2c-powermac: modalias failure on %pOF\n", node);
	return false;
}