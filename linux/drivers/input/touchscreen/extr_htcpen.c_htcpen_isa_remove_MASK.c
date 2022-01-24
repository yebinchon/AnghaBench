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
struct input_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTCPEN_IRQ ; 
 int /*<<< orphan*/  HTCPEN_PORT_INDEX ; 
 int /*<<< orphan*/  HTCPEN_PORT_INIT ; 
 int /*<<< orphan*/  HTCPEN_PORT_IRQ_CLEAR ; 
 struct input_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned int id)
{
	struct input_dev *htcpen_dev = FUNC0(dev);

	FUNC2(htcpen_dev);

	FUNC1(HTCPEN_IRQ, htcpen_dev);

	FUNC3(HTCPEN_PORT_INDEX, 2);
	FUNC3(HTCPEN_PORT_INIT, 1);
	FUNC3(HTCPEN_PORT_IRQ_CLEAR, 1);

	return 0;
}