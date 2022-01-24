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
struct hfi1_pportdata {int* pkeys; } ;
struct hfi1_ibport {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int FULL_MGMT_P_KEY ; 
 int LIM_MGMT_P_KEY ; 
 struct hfi1_pportdata* FUNC1 (struct hfi1_ibport*) ; 

int FUNC2(struct hfi1_ibport *ibp, u16 pkey)
{
	struct hfi1_pportdata *ppd = FUNC1(ibp);
	unsigned i;

	if (pkey == FULL_MGMT_P_KEY || pkey == LIM_MGMT_P_KEY) {
		unsigned lim_idx = -1;

		for (i = 0; i < FUNC0(ppd->pkeys); ++i) {
			/* here we look for an exact match */
			if (ppd->pkeys[i] == pkey)
				return i;
			if (ppd->pkeys[i] == LIM_MGMT_P_KEY)
				lim_idx = i;
		}

		/* did not find 0xffff return 0x7fff idx if found */
		if (pkey == FULL_MGMT_P_KEY)
			return lim_idx;

		/* no match...  */
		return -1;
	}

	pkey &= 0x7fff; /* remove limited/full membership bit */

	for (i = 0; i < FUNC0(ppd->pkeys); ++i)
		if ((ppd->pkeys[i] & 0x7fff) == pkey)
			return i;

	/*
	 * Should not get here, this means hardware failed to validate pkeys.
	 */
	return -1;
}