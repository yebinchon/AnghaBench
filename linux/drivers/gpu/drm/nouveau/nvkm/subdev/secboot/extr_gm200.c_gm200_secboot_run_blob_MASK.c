#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_vma {int /*<<< orphan*/  addr; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  device; } ;
struct nvkm_secboot {TYPE_3__ subdev; TYPE_5__* acr; } ;
struct nvkm_gpuobj {int /*<<< orphan*/  size; } ;
struct nvkm_falcon {TYPE_4__* owner; } ;
struct TYPE_6__ {struct nvkm_subdev subdev; } ;
struct gm200_secboot {int /*<<< orphan*/  vmm; int /*<<< orphan*/  inst; TYPE_1__ base; } ;
struct TYPE_10__ {TYPE_2__* func; } ;
struct TYPE_9__ {int /*<<< orphan*/  index; } ;
struct TYPE_7__ {int (* load ) (TYPE_5__*,struct nvkm_falcon*,struct nvkm_gpuobj*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct gm200_secboot* FUNC0 (struct nvkm_secboot*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_falcon*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvkm_falcon*,struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_falcon*,struct nvkm_subdev*) ; 
 int FUNC4 (struct nvkm_falcon*,int) ; 
 int FUNC5 (struct nvkm_falcon*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_falcon*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_falcon*) ; 
 int FUNC8 (struct nvkm_falcon*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_falcon*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct nvkm_gpuobj*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvkm_vma*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct nvkm_vma**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct nvkm_vma**) ; 
 int FUNC14 (TYPE_5__*,struct nvkm_falcon*,struct nvkm_gpuobj*,int /*<<< orphan*/ ) ; 

int
FUNC15(struct nvkm_secboot *sb, struct nvkm_gpuobj *blob,
		       struct nvkm_falcon *falcon)
{
	struct gm200_secboot *gsb = FUNC0(sb);
	struct nvkm_subdev *subdev = &gsb->base.subdev;
	struct nvkm_vma *vma = NULL;
	u32 start_address;
	int ret;

	ret = FUNC2(falcon, subdev);
	if (ret)
		return ret;

	/* Map the HS firmware so the HS bootloader can see it */
	ret = FUNC12(gsb->vmm, 12, blob->size, &vma);
	if (ret) {
		FUNC3(falcon, subdev);
		return ret;
	}

	ret = FUNC11(blob, 0, gsb->vmm, vma, NULL, 0);
	if (ret)
		goto end;

	/* Reset and set the falcon up */
	ret = FUNC5(falcon);
	if (ret)
		goto end;
	FUNC1(falcon, gsb->inst);

	/* Load the HS bootloader into the falcon's IMEM/DMEM */
	ret = sb->acr->func->load(sb->acr, falcon, blob, vma->addr);
	if (ret < 0)
		goto end;

	start_address = ret;

	/* Disable interrupts as we will poll for the HALT bit */
	FUNC10(sb->subdev.device, falcon->owner->index, false);

	/* Set default error value in mailbox register */
	FUNC9(falcon, 0x040, 0xdeada5a5);

	/* Start the HS bootloader */
	FUNC6(falcon, start_address);
	FUNC7(falcon);
	ret = FUNC8(falcon, 100);
	if (ret)
		goto end;

	/*
	 * The mailbox register contains the (positive) error code - return this
	 * to the caller
	 */
	ret = FUNC4(falcon, 0x040);

end:
	/* Reenable interrupts */
	FUNC10(sb->subdev.device, falcon->owner->index, true);

	/* We don't need the ACR firmware anymore */
	FUNC13(gsb->vmm, &vma);
	FUNC3(falcon, subdev);

	return ret;
}