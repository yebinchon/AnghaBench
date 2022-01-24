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
struct pci_dev {int dummy; } ;
struct drm_device {scalar_t__ open_count; } ;

/* Variables and functions */
 struct drm_device* FUNC0 (struct pci_dev*) ; 

__attribute__((used)) static bool FUNC1(struct pci_dev *pdev)
{
	struct drm_device *dev = FUNC0(pdev);

	/*
	 * FIXME: open_count is protected by drm_global_mutex but that would lead to
	 * locking inversion with the driver load path. And the access here is
	 * completely racy anyway. So don't bother with locking for now.
	 */
	return dev->open_count == 0;
}