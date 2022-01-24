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
struct nvkm_volt {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct gk20a_volt {struct nvkm_volt base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  gk20a_cvb_coef ; 
 int FUNC1 (struct nvkm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gk20a_volt*) ; 
 struct gk20a_volt* FUNC2 (int,int /*<<< orphan*/ ) ; 

int
FUNC3(struct nvkm_device *device, int index, struct nvkm_volt **pvolt)
{
	struct gk20a_volt *volt;

	volt = FUNC2(sizeof(*volt), GFP_KERNEL);
	if (!volt)
		return -ENOMEM;
	*pvolt = &volt->base;

	return FUNC1(device, index, gk20a_cvb_coef,
			       FUNC0(gk20a_cvb_coef), 0, volt);
}