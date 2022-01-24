#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_outp {int dummy; } ;
struct nvkm_i2c_aux {int dummy; } ;
struct nvkm_i2c {int dummy; } ;
struct nvkm_dp {struct nvkm_outp outp; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ subdev; } ;
struct nvkm_disp {TYPE_3__ engine; } ;
struct dcb_output {scalar_t__ location; int /*<<< orphan*/  extdev; int /*<<< orphan*/  i2c_index; } ;
struct TYPE_4__ {struct nvkm_i2c* i2c; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nvkm_dp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvkm_disp*,int,struct dcb_output*,struct nvkm_i2c_aux*,struct nvkm_dp*) ; 
 struct nvkm_i2c_aux* FUNC4 (struct nvkm_i2c*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct nvkm_disp *disp, int index, struct dcb_output *dcbE,
	    struct nvkm_outp **poutp)
{
	struct nvkm_i2c *i2c = disp->engine.subdev.device->i2c;
	struct nvkm_i2c_aux *aux;
	struct nvkm_dp *dp;

	if (dcbE->location == 0)
		aux = FUNC4(i2c, FUNC0(dcbE->i2c_index));
	else
		aux = FUNC4(i2c, FUNC1(dcbE->extdev));

	if (!(dp = FUNC2(sizeof(*dp), GFP_KERNEL)))
		return -ENOMEM;
	*poutp = &dp->outp;

	return FUNC3(disp, index, dcbE, aux, dp);
}