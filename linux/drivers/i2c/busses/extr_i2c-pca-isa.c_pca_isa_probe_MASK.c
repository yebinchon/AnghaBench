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
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2c_clock; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IO_SIZE ; 
 int /*<<< orphan*/  base ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clock ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int irq ; 
 int /*<<< orphan*/  pca_handler ; 
 TYPE_1__ pca_isa_data ; 
 int /*<<< orphan*/  pca_isa_ops ; 
 int /*<<< orphan*/  pca_wait ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, unsigned int id)
{
	FUNC5(&pca_wait);

	FUNC2(dev, "i/o base %#08lx. irq %d\n", base, irq);

#ifdef CONFIG_PPC
	if (check_legacy_ioport(base)) {
		dev_err(dev, "I/O address %#08lx is not available\n", base);
		goto out;
	}
#endif

	if (!FUNC8(base, IO_SIZE, "i2c-pca-isa")) {
		FUNC1(dev, "I/O address %#08lx is in use\n", base);
		goto out;
	}

	if (irq > -1) {
		if (FUNC7(irq, pca_handler, 0, "i2c-pca-isa", &pca_isa_ops) < 0) {
			FUNC1(dev, "Request irq%d failed\n", irq);
			goto out_region;
		}
	}

	pca_isa_data.i2c_clock = clock;
	if (FUNC4(&pca_isa_ops) < 0) {
		FUNC1(dev, "Failed to add i2c bus\n");
		goto out_irq;
	}

	return 0;

 out_irq:
	if (irq > -1)
		FUNC3(irq, &pca_isa_ops);
 out_region:
	FUNC6(base, IO_SIZE);
 out:
	return -ENODEV;
}