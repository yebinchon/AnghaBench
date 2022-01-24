#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ oclass; } ;
struct TYPE_8__ {TYPE_2__ object; } ;
struct nouveau_vmm {TYPE_3__ vmm; int /*<<< orphan*/  cli; } ;
struct nouveau_vma {scalar_t__ refs; } ;
struct nouveau_drm {TYPE_1__* dev; } ;
struct nouveau_cli {struct nouveau_vmm vmm; struct nouveau_vmm svm; } ;
struct TYPE_9__ {int /*<<< orphan*/  bdev; } ;
struct nouveau_bo {TYPE_4__ bo; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device* dev; } ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ NVIF_CLASS_VMM_NV50 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nouveau_drm* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nouveau_cli* FUNC2 (struct drm_file*) ; 
 struct nouveau_bo* FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_bo*,struct nouveau_vma*) ; 
 struct nouveau_vma* FUNC5 (struct nouveau_bo*,struct nouveau_vmm*) ; 
 int FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (TYPE_4__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 

void
FUNC11(struct drm_gem_object *gem, struct drm_file *file_priv)
{
	struct nouveau_cli *cli = FUNC2(file_priv);
	struct nouveau_bo *nvbo = FUNC3(gem);
	struct nouveau_drm *drm = FUNC1(nvbo->bo.bdev);
	struct device *dev = drm->dev->dev;
	struct nouveau_vmm *vmm = cli->svm.cli ? &cli->svm : & cli->vmm;
	struct nouveau_vma *vma;
	int ret;

	if (vmm->vmm.object.oclass < NVIF_CLASS_VMM_NV50)
		return;

	ret = FUNC9(&nvbo->bo, false, false, NULL);
	if (ret)
		return;

	vma = FUNC5(nvbo, vmm);
	if (vma) {
		if (--vma->refs == 0) {
			ret = FUNC6(dev);
			if (!FUNC0(ret < 0 && ret != -EACCES)) {
				FUNC4(nvbo, vma);
				FUNC7(dev);
				FUNC8(dev);
			}
		}
	}
	FUNC10(&nvbo->bo);
}