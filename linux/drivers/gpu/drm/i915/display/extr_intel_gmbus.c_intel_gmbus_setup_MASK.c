#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_8__ {int retries; int /*<<< orphan*/ * lock_ops; int /*<<< orphan*/ * algo; TYPE_2__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct intel_gmbus {unsigned int reg0; int force_bit; TYPE_3__ adapter; struct drm_i915_private* dev_priv; } ;
struct TYPE_6__ {struct pci_dev* pdev; } ;
struct drm_i915_private {struct intel_gmbus* gmbus; int /*<<< orphan*/  gmbus_wait_queue; int /*<<< orphan*/  gmbus_mutex; int /*<<< orphan*/  gpio_mmio_base; TYPE_1__ drm; } ;
struct TYPE_9__ {char* name; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct intel_gmbus*) ; 
 unsigned int GMBUS_RATE_100KHZ ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  I2C_CLASS_DDC ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PCH_DISPLAY_BASE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  VLV_DISPLAY_BASE ; 
 TYPE_5__* FUNC6 (struct drm_i915_private*,unsigned int) ; 
 int /*<<< orphan*/  gmbus_algorithm ; 
 int /*<<< orphan*/  gmbus_lock_ops ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_gmbus*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,char*) ; 

int FUNC15(struct drm_i915_private *dev_priv)
{
	struct pci_dev *pdev = dev_priv->drm.pdev;
	struct intel_gmbus *bus;
	unsigned int pin;
	int ret;

	if (!FUNC1(dev_priv))
		return 0;

	if (FUNC5(dev_priv) || FUNC3(dev_priv))
		dev_priv->gpio_mmio_base = VLV_DISPLAY_BASE;
	else if (!FUNC2(dev_priv))
		/*
		 * Broxton uses the same PCH offsets for South Display Engine,
		 * even though it doesn't have a PCH.
		 */
		dev_priv->gpio_mmio_base = PCH_DISPLAY_BASE;

	FUNC13(&dev_priv->gmbus_mutex);
	FUNC9(&dev_priv->gmbus_wait_queue);

	for (pin = 0; pin < FUNC0(dev_priv->gmbus); pin++) {
		if (!FUNC10(dev_priv, pin))
			continue;

		bus = &dev_priv->gmbus[pin];

		bus->adapter.owner = THIS_MODULE;
		bus->adapter.class = I2C_CLASS_DDC;
		FUNC14(bus->adapter.name,
			 sizeof(bus->adapter.name),
			 "i915 gmbus %s",
			 FUNC6(dev_priv, pin)->name);

		bus->adapter.dev.parent = &pdev->dev;
		bus->dev_priv = dev_priv;

		bus->adapter.algo = &gmbus_algorithm;
		bus->adapter.lock_ops = &gmbus_lock_ops;

		/*
		 * We wish to retry with bit banging
		 * after a timed out GMBUS attempt.
		 */
		bus->adapter.retries = 1;

		/* By default use a conservative clock rate */
		bus->reg0 = pin | GMBUS_RATE_100KHZ;

		/* gmbus seems to be broken on i830 */
		if (FUNC4(dev_priv))
			bus->force_bit = 1;

		FUNC12(bus, pin);

		ret = FUNC7(&bus->adapter);
		if (ret)
			goto err;
	}

	FUNC11(dev_priv);

	return 0;

err:
	while (pin--) {
		if (!FUNC10(dev_priv, pin))
			continue;

		bus = &dev_priv->gmbus[pin];
		FUNC8(&bus->adapter);
	}
	return ret;
}