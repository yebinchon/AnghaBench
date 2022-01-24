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
struct nvkm_pll_vals {int N1; int M1; int N2; int M2; int log2P; int /*<<< orphan*/  refclk; } ;
struct nvkm_clk {int /*<<< orphan*/  subdev; } ;
struct nvbios_pll {int /*<<< orphan*/  refclk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct nvbios_pll*,int,int*,int*,int*,int*,int*) ; 

int
FUNC1(struct nvkm_clk *clock, struct nvbios_pll *info,
		  int clk, struct nvkm_pll_vals *pv)
{
	int N1, M1, N2, M2, P;
	int ret = FUNC0(&clock->subdev, info, clk, &N1, &M1, &N2, &M2, &P);
	if (ret) {
		pv->refclk = info->refclk;
		pv->N1 = N1;
		pv->M1 = M1;
		pv->N2 = N2;
		pv->M2 = M2;
		pv->log2P = P;
	}
	return ret;
}