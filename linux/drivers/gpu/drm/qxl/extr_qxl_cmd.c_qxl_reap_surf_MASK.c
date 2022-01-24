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
struct qxl_device {int /*<<< orphan*/  surf_evict_mutex; } ;
struct qxl_bo {int /*<<< orphan*/  tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct qxl_bo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qxl_bo*) ; 
 int /*<<< orphan*/  FUNC4 (struct qxl_device*,struct qxl_bo*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC6(struct qxl_device *qdev, struct qxl_bo *surf, bool stall)
{
	int ret;

	ret = FUNC2(surf, false);
	if (ret)
		return ret;

	if (stall)
		FUNC1(&qdev->surf_evict_mutex);

	ret = FUNC5(&surf->tbo, true, !stall);

	if (stall)
		FUNC0(&qdev->surf_evict_mutex);
	if (ret) {
		FUNC3(surf);
		return ret;
	}

	FUNC4(qdev, surf, true);
	FUNC3(surf);
	return 0;
}