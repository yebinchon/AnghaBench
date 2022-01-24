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
struct nvkm_outp {int dummy; } ;
struct nvkm_dp {int /*<<< orphan*/  hpd; } ;

/* Variables and functions */
 struct nvkm_dp* FUNC0 (struct nvkm_outp*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_dp*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_outp *outp)
{
	struct nvkm_dp *dp = FUNC0(outp);
	FUNC2(&dp->hpd);
	FUNC1(dp, false);
}