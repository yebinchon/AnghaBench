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
struct pci_dev {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nvkm_client {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct drm_device {int irq_enabled; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device**) ; 
 struct nvkm_device* FUNC5 (int /*<<< orphan*/ ) ; 
 struct nvkm_client* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

void
FUNC8(struct drm_device *dev)
{
	struct pci_dev *pdev = dev->pdev;
	struct nouveau_drm *drm = FUNC2(dev);
	struct nvkm_client *client;
	struct nvkm_device *device;

	FUNC1(dev);

	dev->irq_enabled = false;
	client = FUNC6(&drm->client.base);
	device = FUNC5(client->device);

	FUNC3(dev);
	FUNC7(pdev);
	FUNC0(dev);
	FUNC4(&device);
}