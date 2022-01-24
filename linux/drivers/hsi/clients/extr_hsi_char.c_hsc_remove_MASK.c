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
struct hsi_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct hsc_client_data {TYPE_1__ cdev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  HSC_DEVS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct hsc_client_data* FUNC1 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hsc_client_data*) ; 
 struct hsi_client* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct hsi_client *cl = FUNC4(dev);
	struct hsc_client_data *cl_data = FUNC1(cl);
	dev_t hsc_dev = cl_data->cdev.dev;

	FUNC0(&cl_data->cdev);
	FUNC5(hsc_dev, HSC_DEVS);
	FUNC2(cl, NULL);
	FUNC3(cl_data);

	return 0;
}