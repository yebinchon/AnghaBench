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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct i40iw_device {scalar_t__ arp_table_size; int /*<<< orphan*/  allocated_arps; TYPE_1__* arp_table; int /*<<< orphan*/  next_arp_index; } ;
typedef  int /*<<< orphan*/  ip ;
struct TYPE_2__ {scalar_t__* ip_addr; int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
#define  I40IW_ARP_ADD 130 
#define  I40IW_ARP_DELETE 129 
#define  I40IW_ARP_RESOLVE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i40iw_device*,int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct i40iw_device *iwdev,
		    u32 *ip_addr,
		    bool ipv4,
		    u8 *mac_addr,
		    u32 action)
{
	int arp_index;
	int err;
	u32 ip[4];

	if (ipv4) {
		FUNC6(ip, 0, sizeof(ip));
		ip[0] = *ip_addr;
	} else {
		FUNC5(ip, ip_addr, sizeof(ip));
	}

	for (arp_index = 0; (u32)arp_index < iwdev->arp_table_size; arp_index++)
		if (FUNC4(iwdev->arp_table[arp_index].ip_addr, ip, sizeof(ip)) == 0)
			break;
	switch (action) {
	case I40IW_ARP_ADD:
		if (arp_index != iwdev->arp_table_size)
			return -1;

		arp_index = 0;
		err = FUNC2(iwdev, iwdev->allocated_arps,
					   iwdev->arp_table_size,
					   (u32 *)&arp_index,
					   &iwdev->next_arp_index);

		if (err)
			return err;

		FUNC5(iwdev->arp_table[arp_index].ip_addr, ip, sizeof(ip));
		FUNC1(iwdev->arp_table[arp_index].mac_addr, mac_addr);
		break;
	case I40IW_ARP_RESOLVE:
		if (arp_index == iwdev->arp_table_size)
			return -1;
		break;
	case I40IW_ARP_DELETE:
		if (arp_index == iwdev->arp_table_size)
			return -1;
		FUNC6(iwdev->arp_table[arp_index].ip_addr, 0,
		       sizeof(iwdev->arp_table[arp_index].ip_addr));
		FUNC0(iwdev->arp_table[arp_index].mac_addr);
		FUNC3(iwdev, iwdev->allocated_arps, arp_index);
		break;
	default:
		return -1;
	}
	return arp_index;
}