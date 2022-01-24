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
struct crypto4xx_device {int /*<<< orphan*/  trng_base; } ;
struct crypto4xx_core_device {scalar_t__ trng; int /*<<< orphan*/  device; struct crypto4xx_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto4xx_device*,int) ; 

void FUNC4(struct crypto4xx_core_device *core_dev)
{
	if (core_dev && core_dev->trng) {
		struct crypto4xx_device *dev = core_dev->dev;

		FUNC0(core_dev->device, core_dev->trng);
		FUNC3(dev, false);
		FUNC1(dev->trng_base);
		FUNC2(core_dev->trng);
	}
}