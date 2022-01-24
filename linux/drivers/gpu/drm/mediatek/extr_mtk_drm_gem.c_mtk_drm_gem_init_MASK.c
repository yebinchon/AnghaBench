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
struct mtk_drm_gem_obj {int /*<<< orphan*/  base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 struct mtk_drm_gem_obj* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_drm_gem_obj*) ; 
 struct mtk_drm_gem_obj* FUNC4 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mtk_drm_gem_obj *FUNC6(struct drm_device *dev,
						unsigned long size)
{
	struct mtk_drm_gem_obj *mtk_gem_obj;
	int ret;

	size = FUNC5(size, PAGE_SIZE);

	mtk_gem_obj = FUNC4(sizeof(*mtk_gem_obj), GFP_KERNEL);
	if (!mtk_gem_obj)
		return FUNC1(-ENOMEM);

	ret = FUNC2(dev, &mtk_gem_obj->base, size);
	if (ret < 0) {
		FUNC0("failed to initialize gem object\n");
		FUNC3(mtk_gem_obj);
		return FUNC1(ret);
	}

	return mtk_gem_obj;
}