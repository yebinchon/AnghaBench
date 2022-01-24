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

/* Variables and functions */
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  base_iomem ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ irq ; 
 int /*<<< orphan*/  mmapped ; 
 int /*<<< orphan*/  pcf_isa_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct device *dev, unsigned int id)
{
	FUNC2(&pcf_isa_ops);

	if (irq > 0) {
		FUNC0(irq);
		FUNC1(irq, NULL);
	}

	if (!mmapped) {
		FUNC3(base_iomem);
		FUNC6(base, 2);
	} else {
		FUNC4(base_iomem);
		FUNC5(base, 2);
	}

	return 0;
}