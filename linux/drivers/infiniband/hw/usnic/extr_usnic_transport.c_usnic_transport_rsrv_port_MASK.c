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
typedef  int u16 ;
typedef  enum usnic_transport_type { ____Placeholder_usnic_transport_type } usnic_transport_type ;

/* Variables and functions */
 int /*<<< orphan*/  ROCE_BITMAP_SZ ; 
 int USNIC_TRANSPORT_ROCE_CUSTOM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  roce_bitmap ; 
 int /*<<< orphan*/  roce_bitmap_lock ; 
 int roce_next_port ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

u16 FUNC8(enum usnic_transport_type type, u16 port_num)
{
	if (type == USNIC_TRANSPORT_ROCE_CUSTOM) {
		FUNC2(&roce_bitmap_lock);
		if (!port_num) {
			port_num = FUNC0(roce_bitmap,
						ROCE_BITMAP_SZ,
						roce_next_port /* start */,
						1 /* nr */,
						0 /* align */);
			roce_next_port = (port_num & 4095) + 1;
		} else if (FUNC4(port_num, roce_bitmap)) {
			FUNC6("Failed to allocate port for %s\n",
					FUNC7(type));
			FUNC3(&roce_bitmap_lock);
			goto out_fail;
		}
		FUNC1(roce_bitmap, port_num, 1);
		FUNC3(&roce_bitmap_lock);
	} else {
		FUNC6("Failed to allocate port - transport %s unsupported\n",
				FUNC7(type));
		goto out_fail;
	}

	FUNC5("Allocating port %hu for %s\n", port_num,
			FUNC7(type));
	return port_num;

out_fail:
	return 0;
}