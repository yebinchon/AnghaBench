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
struct device {int dummy; } ;
struct acpi_dma {struct dma_chan* (* acpi_dma_xlate ) (struct acpi_dma_spec*,struct acpi_dma*) ;int /*<<< orphan*/  dma_controllers; void* data; struct device* dev; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  acpi_dma_list ; 
 int /*<<< orphan*/  acpi_dma_lock ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,struct acpi_dma*) ; 
 struct acpi_dma* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct device *dev,
		struct dma_chan *(*acpi_dma_xlate)
		(struct acpi_dma_spec *, struct acpi_dma *),
		void *data)
{
	struct acpi_device *adev;
	struct acpi_dma	*adma;

	if (!dev || !acpi_dma_xlate)
		return -EINVAL;

	/* Check if the device was enumerated by ACPI */
	adev = FUNC0(dev);
	if (!adev)
		return -EINVAL;

	adma = FUNC2(sizeof(*adma), GFP_KERNEL);
	if (!adma)
		return -ENOMEM;

	adma->dev = dev;
	adma->acpi_dma_xlate = acpi_dma_xlate;
	adma->data = data;

	FUNC1(adev, adma);

	/* Now queue acpi_dma controller structure in list */
	FUNC4(&acpi_dma_lock);
	FUNC3(&adma->dma_controllers, &acpi_dma_list);
	FUNC5(&acpi_dma_lock);

	return 0;
}