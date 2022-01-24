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
struct hns_roce_dev {int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  priv; } ;
struct hnae3_handle {int /*<<< orphan*/ * priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hnae3_handle *handle,
					   bool reset)
{
	struct hns_roce_dev *hr_dev = (struct hns_roce_dev *)handle->priv;

	if (!hr_dev)
		return;

	handle->priv = NULL;
	FUNC0(hr_dev);
	FUNC2(hr_dev->priv);
	FUNC1(&hr_dev->ib_dev);
}