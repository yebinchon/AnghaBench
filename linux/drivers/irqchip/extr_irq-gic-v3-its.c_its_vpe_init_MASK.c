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
struct page {int dummy; } ;
struct its_vpe {int vpe_id; int vpe_proxy_event; struct page* vpt_page; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct its_vpe *vpe)
{
	struct page *vpt_page;
	int vpe_id;

	/* Allocate vpe_id */
	vpe_id = FUNC3();
	if (vpe_id < 0)
		return vpe_id;

	/* Allocate VPT */
	vpt_page = FUNC1(GFP_KERNEL);
	if (!vpt_page) {
		FUNC4(vpe_id);
		return -ENOMEM;
	}

	if (!FUNC0(vpe_id)) {
		FUNC4(vpe_id);
		FUNC2(vpt_page);
		return -ENOMEM;
	}

	vpe->vpe_id = vpe_id;
	vpe->vpt_page = vpt_page;
	vpe->vpe_proxy_event = -1;

	return 0;
}