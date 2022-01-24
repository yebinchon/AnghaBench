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
struct platform_device {int dummy; } ;
struct ibm_iic_private {int /*<<< orphan*/  vaddr; scalar_t__ irq; int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct ibm_iic_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ibm_iic_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibm_iic_private*) ; 
 struct ibm_iic_private* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *ofdev)
{
	struct ibm_iic_private *dev = FUNC5(ofdev);

	FUNC1(&dev->adap);

	if (dev->irq) {
		FUNC2(dev, 0);
		FUNC0(dev->irq, dev);
	}

	FUNC3(dev->vaddr);
	FUNC4(dev);

	return 0;
}