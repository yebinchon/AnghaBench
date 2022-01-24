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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct drm_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct pci_dev *pdev)
{
	struct drm_device *dev = FUNC4(pdev);

	FUNC0("Device removal is currently not supported outside of fbcon\n");
	FUNC2(dev);
	FUNC1(dev);
	FUNC3(pdev);
	FUNC5(pdev, NULL);
}