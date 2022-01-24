#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  resv; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct nouveau_bo {TYPE_2__ bo; } ;
struct drm_nouveau_gem_cpu_prep {int flags; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int HZ ; 
 int NOUVEAU_GEM_CPU_PREP_NOWAIT ; 
 int NOUVEAU_GEM_CPU_PREP_WRITE ; 
 long FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bo*) ; 
 struct nouveau_bo* FUNC4 (struct drm_gem_object*) ; 

int
FUNC5(struct drm_device *dev, void *data,
			   struct drm_file *file_priv)
{
	struct drm_nouveau_gem_cpu_prep *req = data;
	struct drm_gem_object *gem;
	struct nouveau_bo *nvbo;
	bool no_wait = !!(req->flags & NOUVEAU_GEM_CPU_PREP_NOWAIT);
	bool write = !!(req->flags & NOUVEAU_GEM_CPU_PREP_WRITE);
	long lret;
	int ret;

	gem = FUNC1(file_priv, req->handle);
	if (!gem)
		return -ENOENT;
	nvbo = FUNC4(gem);

	lret = FUNC0(nvbo->bo.base.resv, write, true,
						   no_wait ? 0 : 30 * HZ);
	if (!lret)
		ret = -EBUSY;
	else if (lret > 0)
		ret = 0;
	else
		ret = lret;

	FUNC3(nvbo);
	FUNC2(gem);

	return ret;
}