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
struct intel_dp {int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int DP_ALPM_CAP ; 
 int /*<<< orphan*/  DP_RECEIVER_ALPM_CAP ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC1(struct intel_dp *intel_dp)
{
	u8 alpm_caps = 0;

	if (FUNC0(&intel_dp->aux, DP_RECEIVER_ALPM_CAP,
			      &alpm_caps) != 1)
		return false;
	return alpm_caps & DP_ALPM_CAP;
}