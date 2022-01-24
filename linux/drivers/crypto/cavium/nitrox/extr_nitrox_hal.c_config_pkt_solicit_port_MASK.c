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
struct TYPE_2__ {int timet; } ;
union nps_pkt_slc_int_levels {scalar_t__ value; TYPE_1__ s; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_device*,int) ; 

__attribute__((used)) static void FUNC4(struct nitrox_device *ndev, int port)
{
	union nps_pkt_slc_int_levels pkt_slc_int;
	u64 offset;

	FUNC3(ndev, port);

	/* step 4: configure interrupt levels */
	offset = FUNC0(port);
	pkt_slc_int.value = 0;
	/* time interrupt threshold */
	pkt_slc_int.s.timet = 0x3fffff;
	FUNC2(ndev, offset, pkt_slc_int.value);

	/* enable the solicit port */
	FUNC1(ndev, port);
}