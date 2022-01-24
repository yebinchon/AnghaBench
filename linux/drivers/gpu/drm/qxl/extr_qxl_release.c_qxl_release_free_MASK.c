#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ops; } ;
struct qxl_release {TYPE_1__ base; int /*<<< orphan*/  bos; int /*<<< orphan*/  id; scalar_t__ surface_release_id; int /*<<< orphan*/  type; } ;
struct qxl_device {int /*<<< orphan*/  release_idr_lock; int /*<<< orphan*/  release_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qxl_release*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct qxl_release*) ; 
 int /*<<< orphan*/  FUNC8 (struct qxl_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(struct qxl_device *qdev,
		 struct qxl_release *release)
{
	FUNC0("release %d, type %d\n", release->id, release->type);

	if (release->surface_release_id)
		FUNC8(qdev, release->surface_release_id);

	FUNC9(&qdev->release_idr_lock);
	FUNC4(&qdev->release_idr, release->id);
	FUNC10(&qdev->release_idr_lock);

	if (release->base.ops) {
		FUNC1(FUNC6(&release->bos));
		FUNC7(release);

		FUNC3(&release->base);
		FUNC2(&release->base);
	} else {
		FUNC7(release);
		FUNC5(release);
	}
}