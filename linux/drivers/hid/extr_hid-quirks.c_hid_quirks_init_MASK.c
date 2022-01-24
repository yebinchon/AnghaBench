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
struct hid_device_id {void* product; void* vendor; void* bus; int /*<<< orphan*/  member_0; } ;
typedef  void* __u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hid_device_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*,char*,unsigned short*,unsigned short*,int /*<<< orphan*/ *) ; 

int FUNC3(char **quirks_param, __u16 bus, int count)
{
	struct hid_device_id id = { 0 };
	int n = 0, m;
	unsigned short int vendor, product;
	u32 quirks;

	id.bus = bus;

	for (; n < count && quirks_param[n]; n++) {

		m = FUNC2(quirks_param[n], "0x%hx:0x%hx:0x%x",
				&vendor, &product, &quirks);

		id.vendor = (__u16)vendor;
		id.product = (__u16)product;

		if (m != 3 ||
		    FUNC0(&id, quirks) != 0) {
			FUNC1("Could not parse HID quirk module param %s\n",
				quirks_param[n]);
		}
	}

	return 0;
}