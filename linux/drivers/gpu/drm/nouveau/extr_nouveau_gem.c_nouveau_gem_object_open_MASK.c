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
struct nouveau_vma {int dummy; } ;
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
 struct nouveau_drm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_cli* FUNC1 (struct drm_file*) ; 
 struct nouveau_bo* FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct nouveau_bo*,struct nouveau_vmm*,struct nouveau_vma**) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int FUNC7 (TYPE_4__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 

int
FUNC9(struct drm_gem_object *gem, struct drm_file *file_priv)
{
	struct nouveau_cli *cli = FUNC1(file_priv);
	struct nouveau_bo *nvbo = FUNC2(gem);
	struct nouveau_drm *drm = FUNC0(nvbo->bo.bdev);
	struct device *dev = drm->dev->dev;
	struct nouveau_vmm *vmm = cli->svm.cli ? &cli->svm : &cli->vmm;
	struct nouveau_vma *vma;
	int ret;

	if (vmm->vmm.object.oclass < NVIF_CLASS_VMM_NV50)
		return 0;

	ret = FUNC7(&nvbo->bo, false, false, NULL);
	if (ret)
		return ret;

	ret = FUNC4(dev);
	if (ret < 0 && ret != -EACCES)
		goto out;

	ret = FUNC3(nvbo, vmm, &vma);
	FUNC5(dev);
	FUNC6(dev);
out:
	FUNC8(&nvbo->bo);
	return ret;
}