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
typedef  int /*<<< orphan*/  u8 ;
struct rmi_device {int dummy; } ;
struct TYPE_2__ {struct rmi_device* rmi_dev; } ;
struct rmi_data {int /*<<< orphan*/  rmi_irq; int /*<<< orphan*/  flags; TYPE_1__ xport; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RMI_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rmi_data* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct rmi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev, u8 *data, int size)
{
	struct rmi_data *hdata = FUNC1(hdev);
	struct rmi_device *rmi_dev = hdata->xport.rmi_dev;
	unsigned long flags;

	if (!(FUNC5(RMI_STARTED, &hdata->flags)))
		return 0;

	FUNC3(flags);

	FUNC4(rmi_dev, data[1], &data[2], size - 2);

	FUNC0(hdata->rmi_irq);

	FUNC2(flags);

	return 1;
}