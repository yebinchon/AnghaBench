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
struct TYPE_4__ {int quality; int /*<<< orphan*/  read; int /*<<< orphan*/ * name; } ;
struct u2fzero_device {TYPE_2__ hwrng; TYPE_1__* hdev; int /*<<< orphan*/ * rng_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_SHORT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  u2fzero_rng_read ; 

__attribute__((used)) static int FUNC2(struct u2fzero_device *dev,
			      unsigned int minor)
{
	dev->rng_name = FUNC1(&dev->hdev->dev, GFP_KERNEL,
		"%s-rng%u", DRIVER_SHORT, minor);
	if (dev->rng_name == NULL)
		return -ENOMEM;

	dev->hwrng.name = dev->rng_name;
	dev->hwrng.read = u2fzero_rng_read;
	dev->hwrng.quality = 1;

	return FUNC0(&dev->hdev->dev, &dev->hwrng);
}