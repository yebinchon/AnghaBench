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
struct viommu_dev {int /*<<< orphan*/  request_lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct viommu_dev*,void*,size_t,int) ; 
 int FUNC1 (struct viommu_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (void*,size_t) ; 

__attribute__((used)) static int FUNC6(struct viommu_dev *viommu, void *buf,
				size_t len)
{
	int ret;
	unsigned long flags;

	FUNC3(&viommu->request_lock, flags);

	ret = FUNC0(viommu, buf, len, true);
	if (ret) {
		FUNC2(viommu->dev, "could not add request (%d)\n", ret);
		goto out_unlock;
	}

	ret = FUNC1(viommu);
	if (ret) {
		FUNC2(viommu->dev, "could not sync requests (%d)\n", ret);
		/* Fall-through (get the actual request status) */
	}

	ret = FUNC5(buf, len);
out_unlock:
	FUNC4(&viommu->request_lock, flags);
	return ret;
}