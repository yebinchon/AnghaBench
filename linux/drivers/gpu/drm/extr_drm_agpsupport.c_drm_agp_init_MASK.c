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
struct drm_device {int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {scalar_t__ chipset; int /*<<< orphan*/  aper_base; int /*<<< orphan*/  page_mask; int /*<<< orphan*/  cant_use_aperture; } ;
struct drm_agp_head {TYPE_1__ agp_info; int /*<<< orphan*/  base; int /*<<< orphan*/  page_mask; int /*<<< orphan*/  cant_use_aperture; int /*<<< orphan*/  memory; scalar_t__ bridge; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NOT_SUPPORTED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_agp_head*) ; 
 struct drm_agp_head* FUNC6 (int,int /*<<< orphan*/ ) ; 

struct drm_agp_head *FUNC7(struct drm_device *dev)
{
	struct drm_agp_head *head = NULL;

	head = FUNC6(sizeof(*head), GFP_KERNEL);
	if (!head)
		return NULL;
	head->bridge = FUNC4(dev->pdev);
	if (!head->bridge) {
		head->bridge = FUNC1(dev->pdev);
		if (!head->bridge) {
			FUNC5(head);
			return NULL;
		}
		FUNC3(head->bridge, &head->agp_info);
		FUNC2(head->bridge);
	} else {
		FUNC3(head->bridge, &head->agp_info);
	}
	if (head->agp_info.chipset == NOT_SUPPORTED) {
		FUNC5(head);
		return NULL;
	}
	FUNC0(&head->memory);
	head->cant_use_aperture = head->agp_info.cant_use_aperture;
	head->page_mask = head->agp_info.page_mask;
	head->base = head->agp_info.aper_base;
	return head;
}