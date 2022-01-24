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
union qxl_release_info {int next; } ;
typedef  int uint64_t ;
struct qxl_release {int type; } ;
struct qxl_device {int /*<<< orphan*/  release_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  QXL_RELEASE_CURSOR_CMD 130 
#define  QXL_RELEASE_DRAWABLE 129 
#define  QXL_RELEASE_SURFACE_CMD 128 
 int /*<<< orphan*/  FUNC2 (struct qxl_device*,struct qxl_release*) ; 
 struct qxl_release* FUNC3 (struct qxl_device*,int) ; 
 union qxl_release_info* FUNC4 (struct qxl_device*,struct qxl_release*) ; 
 int /*<<< orphan*/  FUNC5 (struct qxl_device*,struct qxl_release*,union qxl_release_info*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*) ; 

int FUNC7(struct qxl_device *qdev)
{
	struct qxl_release *release;
	uint64_t id, next_id;
	int i = 0;
	union qxl_release_info *info;

	while (FUNC6(qdev->release_ring, &id)) {
		FUNC0("popped %lld\n", id);
		while (id) {
			release = FUNC3(qdev, id);
			if (release == NULL)
				break;

			info = FUNC4(qdev, release);
			next_id = info->next;
			FUNC5(qdev, release, info);

			FUNC0("popped %lld, next %lld\n", id,
					 next_id);

			switch (release->type) {
			case QXL_RELEASE_DRAWABLE:
			case QXL_RELEASE_SURFACE_CMD:
			case QXL_RELEASE_CURSOR_CMD:
				break;
			default:
				FUNC1("unexpected release type\n");
				break;
			}
			id = next_id;

			FUNC2(qdev, release);
			++i;
		}
	}

	FUNC0("%d\n", i);

	return i;
}