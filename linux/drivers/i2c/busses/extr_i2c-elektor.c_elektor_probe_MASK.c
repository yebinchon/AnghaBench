#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  base_iomem ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ irq ; 
 int /*<<< orphan*/  mmapped ; 
 scalar_t__ FUNC7 () ; 
 TYPE_2__ pcf_isa_ops ; 
 int /*<<< orphan*/  pcf_wait ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct device *dev, unsigned int id)
{
	FUNC4(&pcf_wait);
	if (FUNC7())
		return -ENODEV;
	pcf_isa_ops.dev.parent = dev;
	if (FUNC3(&pcf_isa_ops) < 0)
		goto fail;

	FUNC0(dev, "found device at %#x\n", base);

	return 0;

 fail:
	if (irq > 0) {
		FUNC1(irq);
		FUNC2(irq, NULL);
	}

	if (!mmapped) {
		FUNC5(base_iomem);
		FUNC9(base, 2);
	} else {
		FUNC6(base_iomem);
		FUNC8(base, 2);
	}
	return -ENODEV;
}