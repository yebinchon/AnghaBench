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
struct nvkm_outp {int dummy; } ;
struct TYPE_8__ {TYPE_3__* ior; } ;
struct TYPE_5__ {int /*<<< orphan*/  done; } ;
struct nvkm_dp {TYPE_4__ outp; TYPE_1__ lt; } ;
struct TYPE_6__ {scalar_t__ nr; } ;
struct TYPE_7__ {TYPE_2__ dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nvkm_dp* FUNC1 (struct nvkm_outp*) ; 

__attribute__((used)) static void
FUNC2(struct nvkm_outp *outp)
{
	struct nvkm_dp *dp = FUNC1(outp);

	/* Prevent link from being retrained if sink sends an IRQ. */
	FUNC0(&dp->lt.done, 0);
	dp->outp.ior->dp.nr = 0;
}