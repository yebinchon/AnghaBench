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
struct intel_dp {int /*<<< orphan*/  dsc_dpcd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC1(struct intel_dp *intel_dp, u8 dsc_max_bpc)
{
	int i, num_bpc;
	u8 dsc_bpc[3] = {0};

	num_bpc = FUNC0(intel_dp->dsc_dpcd,
						       dsc_bpc);
	for (i = 0; i < num_bpc; i++) {
		if (dsc_max_bpc >= dsc_bpc[i])
			return dsc_bpc[i] * 3;
	}

	return 0;
}