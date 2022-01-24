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
struct rockchip_gem_object {int /*<<< orphan*/  kvaddr; int /*<<< orphan*/  num_pages; int /*<<< orphan*/  pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  VM_MAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rockchip_gem_object*) ; 
 int FUNC3 (struct rockchip_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct rockchip_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct rockchip_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rockchip_gem_object *rk_obj,
				    bool alloc_kmap)
{
	int ret;

	ret = FUNC2(rk_obj);
	if (ret < 0)
		return ret;

	ret = FUNC3(rk_obj);
	if (ret < 0)
		goto err_free;

	if (alloc_kmap) {
		rk_obj->kvaddr = FUNC6(rk_obj->pages, rk_obj->num_pages, VM_MAP,
				      FUNC1(PAGE_KERNEL));
		if (!rk_obj->kvaddr) {
			FUNC0("failed to vmap() buffer\n");
			ret = -ENOMEM;
			goto err_unmap;
		}
	}

	return 0;

err_unmap:
	FUNC4(rk_obj);
err_free:
	FUNC5(rk_obj);

	return ret;
}