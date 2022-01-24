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
struct intel_vgpu_oos_page {int id; int /*<<< orphan*/  list; int /*<<< orphan*/  vm_list; void* mem; } ;
struct intel_gvt_gtt {int /*<<< orphan*/  oos_page_free_list_head; int /*<<< orphan*/  oos_page_use_list_head; } ;
struct intel_gvt {struct intel_gvt_gtt gtt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu_oos_page*) ; 
 struct intel_vgpu_oos_page* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int preallocated_oos_pages ; 

__attribute__((used)) static int FUNC7(struct intel_gvt *gvt)
{
	struct intel_gvt_gtt *gtt = &gvt->gtt;
	struct intel_vgpu_oos_page *oos_page;
	int i;
	int ret;

	FUNC0(&gtt->oos_page_free_list_head);
	FUNC0(&gtt->oos_page_use_list_head);

	for (i = 0; i < preallocated_oos_pages; i++) {
		oos_page = FUNC5(sizeof(*oos_page), GFP_KERNEL);
		if (!oos_page) {
			ret = -ENOMEM;
			goto fail;
		}
		oos_page->mem = (void *)FUNC1(GFP_KERNEL, 0);
		if (!oos_page->mem) {
			ret = -ENOMEM;
			FUNC4(oos_page);
			goto fail;
		}

		FUNC0(&oos_page->list);
		FUNC0(&oos_page->vm_list);
		oos_page->id = i;
		FUNC6(&oos_page->list, &gtt->oos_page_free_list_head);
	}

	FUNC3("%d oos pages preallocated\n", i);

	return 0;
fail:
	FUNC2(gvt);
	return ret;
}