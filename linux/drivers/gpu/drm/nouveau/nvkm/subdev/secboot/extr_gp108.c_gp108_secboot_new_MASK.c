#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nvkm_secboot {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nvkm_acr {TYPE_1__* func; } ;
struct gm200_secboot {struct nvkm_secboot base; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dtor ) (struct nvkm_acr*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct nvkm_acr*) ; 
 int /*<<< orphan*/  NVKM_SECBOOT_FALCON_FECS ; 
 int /*<<< orphan*/  NVKM_SECBOOT_FALCON_GPCCS ; 
 int /*<<< orphan*/  NVKM_SECBOOT_FALCON_SEC2 ; 
 int FUNC2 (struct nvkm_acr*) ; 
 struct nvkm_acr* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gp102_secboot ; 
 struct gm200_secboot* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct nvkm_acr*,struct nvkm_device*,int,struct nvkm_secboot*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_acr*) ; 

int
FUNC7(struct nvkm_device *device, int index,
		  struct nvkm_secboot **psb)
{
	struct gm200_secboot *gsb;
	struct nvkm_acr *acr;

	acr = FUNC3(NVKM_SECBOOT_FALCON_SEC2,
			   FUNC0(NVKM_SECBOOT_FALCON_FECS) |
			   FUNC0(NVKM_SECBOOT_FALCON_GPCCS) |
			   FUNC0(NVKM_SECBOOT_FALCON_SEC2));
	if (FUNC1(acr))
		return FUNC2(acr);

	if (!(gsb = FUNC4(sizeof(*gsb), GFP_KERNEL))) {
		acr->func->dtor(acr);
		return -ENOMEM;
	}
	*psb = &gsb->base;

	return FUNC5(&gp102_secboot, acr, device, index, &gsb->base);
}