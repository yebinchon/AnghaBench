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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ II_IO ; 
 scalar_t__ II_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ LL_L1 ; 
 scalar_t__ LL_LG ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  R4_DRD 132 
#define  R4_DWR 131 
#define  R4_EVICT 130 
#define  R4_RD 129 
#define  R4_SNOOP 128 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TT_DATA ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static bool FUNC7(u16 ec, u8 xec)
{
	u8 r4	 = FUNC4(ec);
	bool ret = true;

	if (FUNC3(ec)) {

		if (FUNC5(ec) != TT_DATA || FUNC2(ec) != LL_L1)
			return false;

		switch (r4) {
		case R4_DRD:
		case R4_DWR:
			FUNC6("Data/Tag parity error due to %s.\n",
				(r4 == R4_DRD ? "load/hw prf" : "store"));
			break;
		case R4_EVICT:
			FUNC6("Copyback parity error on a tag miss.\n");
			break;
		case R4_SNOOP:
			FUNC6("Tag parity error during snoop.\n");
			break;
		default:
			ret = false;
		}
	} else if (FUNC0(ec)) {

		if ((FUNC1(ec) != II_MEM && FUNC1(ec) != II_IO) || FUNC2(ec) != LL_LG)
			return false;

		FUNC6("System read data error on a ");

		switch (r4) {
		case R4_RD:
			FUNC6("TLB reload.\n");
			break;
		case R4_DWR:
			FUNC6("store.\n");
			break;
		case R4_DRD:
			FUNC6("load.\n");
			break;
		default:
			ret = false;
		}
	} else {
		ret = false;
	}

	return ret;
}