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
struct drm_device {struct cirrus_device* dev_private; } ;
struct cirrus_device {int /*<<< orphan*/  vram; int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cirrus_device*) ; 
 struct drm_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct drm_device *dev = FUNC5(pdev);
	struct cirrus_device *cirrus = dev->dev_private;

	FUNC1(dev);
	FUNC2(dev);
	FUNC3(cirrus->mmio);
	FUNC3(cirrus->vram);
	FUNC0(dev);
	FUNC4(cirrus);
	FUNC6(pdev);
}