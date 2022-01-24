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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct of_device_id {int /*<<< orphan*/  compatible; } ;
struct malidp_hw_device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ MALIDP500_DC_BASE ; 
 scalar_t__ MALIDP550_DC_BASE ; 
 scalar_t__ MALIDP_DE_CORE_ID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct malidp_hw_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static bool FUNC5(struct malidp_hw_device *hwdev,
				       const struct of_device_id *dev_id)
{
	u32 core_id;
	const char *compatstr_dp500 = "arm,mali-dp500";
	bool is_dp500;
	bool dt_is_dp500;

	/*
	 * The DP500 CORE_ID register is in a different location, so check it
	 * first. If the product id field matches, then this is DP500, otherwise
	 * check the DP550/650 CORE_ID register.
	 */
	core_id = FUNC2(hwdev, MALIDP500_DC_BASE + MALIDP_DE_CORE_ID);
	/* Offset 0x18 will never read 0x500 on products other than DP500. */
	is_dp500 = (FUNC1(core_id) == 0x500);
	dt_is_dp500 = FUNC4(dev_id->compatible, compatstr_dp500,
			      sizeof(dev_id->compatible)) != NULL;
	if (is_dp500 != dt_is_dp500) {
		FUNC0("Device-tree expects %s, but hardware %s DP500.\n",
			  dev_id->compatible, is_dp500 ? "is" : "is not");
		return false;
	} else if (!dt_is_dp500) {
		u16 product_id;
		char buf[32];

		core_id = FUNC2(hwdev,
					 MALIDP550_DC_BASE + MALIDP_DE_CORE_ID);
		product_id = FUNC1(core_id);
		FUNC3(buf, sizeof(buf), "arm,mali-dp%X", product_id);
		if (!FUNC4(dev_id->compatible, buf,
			     sizeof(dev_id->compatible))) {
			FUNC0("Device-tree expects %s, but hardware is DP%03X.\n",
				  dev_id->compatible, product_id);
			return false;
		}
	}
	return true;
}