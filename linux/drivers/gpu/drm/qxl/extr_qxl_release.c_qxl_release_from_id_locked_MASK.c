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
typedef  int /*<<< orphan*/  uint64_t ;
struct qxl_release {int dummy; } ;
struct qxl_device {int /*<<< orphan*/  release_idr_lock; int /*<<< orphan*/  release_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct qxl_release* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct qxl_release *FUNC4(struct qxl_device *qdev,
						   uint64_t id)
{
	struct qxl_release *release;

	FUNC2(&qdev->release_idr_lock);
	release = FUNC1(&qdev->release_idr, id);
	FUNC3(&qdev->release_idr_lock);
	if (!release) {
		FUNC0("failed to find id in release_idr\n");
		return NULL;
	}

	return release;
}