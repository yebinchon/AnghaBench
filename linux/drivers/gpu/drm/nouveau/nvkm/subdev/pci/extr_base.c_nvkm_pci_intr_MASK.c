#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct nvkm_device* device; } ;
struct nvkm_pci {scalar_t__ irq; TYPE_2__* func; scalar_t__ msi; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* msi_rearm ) (struct nvkm_pci*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_pci*) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int irq, void *arg)
{
	struct nvkm_pci *pci = arg;
	struct nvkm_device *device = pci->subdev.device;
	bool handled = false;

	if (pci->irq < 0)
		return IRQ_HANDLED;

	FUNC2(device);
	if (pci->msi)
		pci->func->msi_rearm(pci);
	FUNC0(device, &handled);
	FUNC1(device);
	return handled ? IRQ_HANDLED : IRQ_NONE;
}