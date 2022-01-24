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
struct TYPE_2__ {scalar_t__ seqno; int /*<<< orphan*/ * ops; } ;
struct qxl_release {int type; int id; TYPE_1__ base; int /*<<< orphan*/  bos; scalar_t__ surface_release_id; scalar_t__ release_offset; } ;
struct qxl_device {int /*<<< orphan*/  release_idr_lock; scalar_t__ release_seqno; int /*<<< orphan*/  release_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct qxl_release*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct qxl_release*) ; 
 struct qxl_release* FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct qxl_device *qdev, int type,
		  struct qxl_release **ret)
{
	struct qxl_release *release;
	int handle;
	size_t size = sizeof(*release);

	release = FUNC7(size, GFP_KERNEL);
	if (!release) {
		FUNC1("Out of memory\n");
		return -ENOMEM;
	}
	release->base.ops = NULL;
	release->type = type;
	release->release_offset = 0;
	release->surface_release_id = 0;
	FUNC2(&release->bos);

	FUNC4(GFP_KERNEL);
	FUNC8(&qdev->release_idr_lock);
	handle = FUNC3(&qdev->release_idr, release, 1, 0, GFP_NOWAIT);
	release->base.seqno = ++qdev->release_seqno;
	FUNC9(&qdev->release_idr_lock);
	FUNC5();
	if (handle < 0) {
		FUNC6(release);
		*ret = NULL;
		return handle;
	}
	*ret = release;
	FUNC0("allocated release %d\n", handle);
	release->id = handle;
	return handle;
}