#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {TYPE_3__* ior; } ;
struct nvkm_dp {int /*<<< orphan*/  aux; TYPE_4__ outp; } ;
struct lt_state {struct nvkm_dp* dp; } ;
struct TYPE_7__ {TYPE_2__* func; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* pattern ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_1__ dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPCD_LC02 ; 
 int /*<<< orphan*/  DPCD_LC02_TRAINING_PATTERN_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct lt_state *lt, u8 pattern)
{
	struct nvkm_dp *dp = lt->dp;
	u8 sink_tp;

	FUNC0(&dp->outp, "training pattern %d", pattern);
	dp->outp.ior->func->dp.pattern(dp->outp.ior, pattern);

	FUNC1(dp->aux, DPCD_LC02, &sink_tp, 1);
	sink_tp &= ~DPCD_LC02_TRAINING_PATTERN_SET;
	sink_tp |= pattern;
	FUNC2(dp->aux, DPCD_LC02, &sink_tp, 1);
}