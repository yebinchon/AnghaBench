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
struct nvif_mclass {int /*<<< orphan*/  oclass; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct nouveau_svm {int /*<<< orphan*/  inst; int /*<<< orphan*/  mutex; struct nouveau_drm* drm; } ;
struct TYPE_4__ {scalar_t__ family; } ;
struct TYPE_5__ {int /*<<< orphan*/  object; TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; struct nouveau_svm* svm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  MAXWELL_FAULT_BUFFER_A 129 
 scalar_t__ NV_DEVICE_INFO_V0_PASCAL ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_svm*,char*) ; 
#define  VOLTA_FAULT_BUFFER_A 128 
 struct nouveau_svm* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nouveau_svm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_drm*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct nvif_mclass const*) ; 

void
FUNC7(struct nouveau_drm *drm)
{
	static const struct nvif_mclass buffers[] = {
		{   VOLTA_FAULT_BUFFER_A, 0 },
		{ MAXWELL_FAULT_BUFFER_A, 0 },
		{}
	};
	struct nouveau_svm *svm;
	int ret;

	/* Disable on Volta and newer until channel recovery is fixed,
	 * otherwise clients will have a trivial way to trash the GPU
	 * for everyone.
	 */
	if (drm->client.device.info.family > NV_DEVICE_INFO_V0_PASCAL)
		return;

	if (!(drm->svm = svm = FUNC2(sizeof(*drm->svm), GFP_KERNEL)))
		return;

	drm->svm->drm = drm;
	FUNC3(&drm->svm->mutex);
	FUNC0(&drm->svm->inst);

	ret = FUNC6(&drm->client.device.object, buffers);
	if (ret < 0) {
		FUNC1(svm, "No supported fault buffer class");
		FUNC5(drm);
		return;
	}

	ret = FUNC4(svm, buffers[ret].oclass, 0);
	if (ret) {
		FUNC5(drm);
		return;
	}

	FUNC1(svm, "Initialised");
}