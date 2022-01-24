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
typedef  int /*<<< orphan*/  u16 ;
typedef  enum usnic_transport_type { ____Placeholder_usnic_transport_type } usnic_transport_type ;

/* Variables and functions */
 int USNIC_TRANSPORT_ROCE_CUSTOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  roce_bitmap ; 
 int /*<<< orphan*/  roce_bitmap_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int FUNC6 (int) ; 

void FUNC7(enum usnic_transport_type type, u16 port_num)
{
	if (type == USNIC_TRANSPORT_ROCE_CUSTOM) {
		FUNC1(&roce_bitmap_lock);
		if (!port_num) {
			FUNC5("Unreserved invalid port num 0 for %s\n",
					FUNC6(type));
			goto out_roce_custom;
		}

		if (!FUNC3(port_num, roce_bitmap)) {
			FUNC5("Unreserving invalid %hu for %s\n",
					port_num,
					FUNC6(type));
			goto out_roce_custom;
		}
		FUNC0(roce_bitmap, port_num, 1);
		FUNC4("Freeing port %hu for %s\n", port_num,
				FUNC6(type));
out_roce_custom:
		FUNC2(&roce_bitmap_lock);
	} else {
		FUNC5("Freeing invalid port %hu for %d\n", port_num, type);
	}
}