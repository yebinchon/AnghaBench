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
struct max77843_muic_info {int /*<<< orphan*/  irq_work; struct max77693_dev* max77843; } ;
struct max77693_dev {int /*<<< orphan*/  i2c_muic; int /*<<< orphan*/  irq_data_muic; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct max77843_muic_info* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct max77843_muic_info *info = FUNC2(pdev);
	struct max77693_dev *max77843 = info->max77843;

	FUNC0(&info->irq_work);
	FUNC3(max77843->irq, max77843->irq_data_muic);
	FUNC1(max77843->i2c_muic);

	return 0;
}