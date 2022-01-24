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
struct platform_device {struct device dev; } ;
struct crypto4xx_core_device {int /*<<< orphan*/  rng_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto4xx_core_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct crypto4xx_core_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto4xx_core_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *ofdev)
{
	struct device *dev = &ofdev->dev;
	struct crypto4xx_core_device *core_dev = FUNC2(dev);

	FUNC6(core_dev);

	FUNC3(core_dev->irq, dev);
	FUNC4(core_dev->irq);

	FUNC7(&core_dev->tasklet);
	/* Un-register with Linux CryptoAPI */
	FUNC1(core_dev->dev);
	FUNC5(&core_dev->rng_lock);
	/* Free all allocated memory */
	FUNC0(core_dev);

	return 0;
}