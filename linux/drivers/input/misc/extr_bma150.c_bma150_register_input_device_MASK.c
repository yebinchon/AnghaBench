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
struct input_dev {int /*<<< orphan*/  close; int /*<<< orphan*/  open; } ;
struct bma150_data {struct input_dev* input; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bma150_data*,struct input_dev*) ; 
 int /*<<< orphan*/  bma150_irq_close ; 
 int /*<<< orphan*/  bma150_irq_open ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,struct bma150_data*) ; 

__attribute__((used)) static int FUNC5(struct bma150_data *bma150)
{
	struct input_dev *idev;
	int error;

	idev = FUNC1();
	if (!idev)
		return -ENOMEM;

	FUNC0(bma150, idev);

	idev->open = bma150_irq_open;
	idev->close = bma150_irq_close;
	FUNC4(idev, bma150);

	bma150->input = idev;

	error = FUNC3(idev);
	if (error) {
		FUNC2(idev);
		return error;
	}

	return 0;
}