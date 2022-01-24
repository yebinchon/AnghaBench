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
typedef  int /*<<< orphan*/  u8 ;
struct ssb_sprom {int /*<<< orphan*/ * il0mac; int /*<<< orphan*/  et2phyaddr; int /*<<< orphan*/  et2mdcport; int /*<<< orphan*/ * et2mac; int /*<<< orphan*/  et1phyaddr; int /*<<< orphan*/  et1mdcport; int /*<<< orphan*/ * et1mac; int /*<<< orphan*/  et0phyaddr; int /*<<< orphan*/  et0mdcport; int /*<<< orphan*/ * et0mac; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mac_addr_used ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ssb_sprom *sprom,
					const char *prefix, bool fallback)
{
	bool fb = fallback;

	FUNC3(prefix, "et0macaddr", sprom->et0mac, fallback);
	FUNC4(prefix, NULL, "et0mdcport", &sprom->et0mdcport, 0,
		      fallback);
	FUNC4(prefix, NULL, "et0phyaddr", &sprom->et0phyaddr, 0,
		      fallback);

	FUNC3(prefix, "et1macaddr", sprom->et1mac, fallback);
	FUNC4(prefix, NULL, "et1mdcport", &sprom->et1mdcport, 0,
		      fallback);
	FUNC4(prefix, NULL, "et1phyaddr", &sprom->et1phyaddr, 0,
		      fallback);

	FUNC3(prefix, "et2macaddr", sprom->et2mac, fb);
	FUNC4(prefix, NULL, "et2mdcport", &sprom->et2mdcport, 0, fb);
	FUNC4(prefix, NULL, "et2phyaddr", &sprom->et2phyaddr, 0, fb);

	FUNC3(prefix, "macaddr", sprom->il0mac, fallback);
	FUNC3(prefix, "il0macaddr", sprom->il0mac, fallback);

	/* The address prefix 00:90:4C is used by Broadcom in their initial
	 * configuration. When a mac address with the prefix 00:90:4C is used
	 * all devices from the same series are sharing the same mac address.
	 * To prevent mac address collisions we replace them with a mac address
	 * based on the base address.
	 */
	if (!FUNC1(sprom->il0mac)) {
		u8 mac[6];

		FUNC3(NULL, "et0macaddr", mac, false);
		if (FUNC1(mac)) {
			int err = FUNC0(mac, mac_addr_used);

			if (!err) {
				FUNC2(sprom->il0mac, mac);
				mac_addr_used++;
			}
		}
	}
}