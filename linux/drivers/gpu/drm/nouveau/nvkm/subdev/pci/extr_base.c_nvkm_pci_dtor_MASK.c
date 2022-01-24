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
struct nvkm_subdev {int dummy; } ;
struct nvkm_pci {int irq; int /*<<< orphan*/  pdev; scalar_t__ msi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct nvkm_pci*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_pci*) ; 
 void* FUNC2 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC4(struct nvkm_subdev *subdev)
{
	struct nvkm_pci *pci = FUNC2(subdev);

	FUNC1(pci);

	if (pci->irq >= 0) {
		/* freq_irq() will call the handler, we use pci->irq == -1
		 * to signal that it's been torn down and should be a noop.
		 */
		int irq = pci->irq;
		pci->irq = -1;
		FUNC0(irq, pci);
	}

	if (pci->msi)
		FUNC3(pci->pdev);

	return FUNC2(subdev);
}