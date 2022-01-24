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
struct nvkm_dp {int* dpcd; int /*<<< orphan*/  outp; int /*<<< orphan*/  aux; } ;
struct lt_state {int* stat; int pc2stat; struct nvkm_dp* dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPCD_LS02 ; 
 int /*<<< orphan*/  DPCD_LS0C ; 
 size_t DPCD_RC0E_AUX_RD_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct lt_state *lt, bool pc, u32 delay)
{
	struct nvkm_dp *dp = lt->dp;
	int ret;

	if (dp->dpcd[DPCD_RC0E_AUX_RD_INTERVAL])
		FUNC1(dp->dpcd[DPCD_RC0E_AUX_RD_INTERVAL] * 4);
	else
		FUNC3(delay);

	ret = FUNC2(dp->aux, DPCD_LS02, lt->stat, 6);
	if (ret)
		return ret;

	if (pc) {
		ret = FUNC2(dp->aux, DPCD_LS0C, &lt->pc2stat, 1);
		if (ret)
			lt->pc2stat = 0x00;
		FUNC0(&dp->outp, "status %6ph pc2 %02x",
			   lt->stat, lt->pc2stat);
	} else {
		FUNC0(&dp->outp, "status %6ph", lt->stat);
	}

	return 0;
}