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
struct stu300_dev {scalar_t__ virtbase; int /*<<< orphan*/  adapter; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ I2C_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct stu300_dev* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct stu300_dev *dev = FUNC1(pdev);

	FUNC0(&dev->adapter);
	/* Turn off everything */
	FUNC2(0x00, dev->virtbase + I2C_CR);
	return 0;
}