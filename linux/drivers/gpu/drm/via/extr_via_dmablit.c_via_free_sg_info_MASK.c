#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int state; int num_desc_pages; scalar_t__ free_on_sequence; int /*<<< orphan*/ * bounce_buffer; int /*<<< orphan*/ * pages; int /*<<< orphan*/  direction; int /*<<< orphan*/  num_pages; int /*<<< orphan*/ ** desc_pages; } ;
typedef  TYPE_1__ drm_via_sg_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
#define  dr_via_desc_pages_alloc 131 
#define  dr_via_device_mapped 130 
#define  dr_via_pages_alloc 129 
#define  dr_via_pages_locked 128 
 int dr_via_sg_init ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(struct pci_dev *pdev, drm_via_sg_info_t *vsg)
{
	int i;

	switch (vsg->state) {
	case dr_via_device_mapped:
		FUNC4(pdev, vsg);
		/* fall through */
	case dr_via_desc_pages_alloc:
		for (i = 0; i < vsg->num_desc_pages; ++i) {
			if (vsg->desc_pages[i] != NULL)
				FUNC0((unsigned long)vsg->desc_pages[i]);
		}
		FUNC1(vsg->desc_pages);
		/* fall through */
	case dr_via_pages_locked:
		FUNC2(vsg->pages, vsg->num_pages,
					  (vsg->direction == DMA_FROM_DEVICE));
		/* fall through */
	case dr_via_pages_alloc:
		FUNC3(vsg->pages);
		/* fall through */
	default:
		vsg->state = dr_via_sg_init;
	}
	FUNC3(vsg->bounce_buffer);
	vsg->bounce_buffer = NULL;
	vsg->free_on_sequence = 0;
}