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
typedef  int /*<<< orphan*/  u16 ;
struct iommu_dev_data {int /*<<< orphan*/  dev_data_list; int /*<<< orphan*/  rs; int /*<<< orphan*/  devid; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_data_list ; 
 struct iommu_dev_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iommu_dev_data *FUNC4(u16 devid)
{
	struct iommu_dev_data *dev_data;

	dev_data = FUNC0(sizeof(*dev_data), GFP_KERNEL);
	if (!dev_data)
		return NULL;

	FUNC3(&dev_data->lock);
	dev_data->devid = devid;
	FUNC2(&dev_data->rs);

	FUNC1(&dev_data->dev_data_list, &dev_data_list);
	return dev_data;
}