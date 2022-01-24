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
struct queue_limits {int dummy; } ;
struct mapped_device {int /*<<< orphan*/  disk; int /*<<< orphan*/  queue; } ;
struct dm_table {int dummy; } ;
typedef  enum dm_queue_mode { ____Placeholder_dm_queue_mode } dm_queue_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  DM_TYPE_BIO_BASED 132 
#define  DM_TYPE_DAX_BIO_BASED 131 
#define  DM_TYPE_NONE 130 
#define  DM_TYPE_NVME_BIO_BASED 129 
#define  DM_TYPE_REQUEST_BASED 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dm_table*,struct queue_limits*) ; 
 int FUNC5 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*) ; 
 int /*<<< orphan*/  dm_make_request ; 
 int FUNC7 (struct mapped_device*,struct dm_table*) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_table*,int /*<<< orphan*/ ,struct queue_limits*) ; 

int FUNC9(struct mapped_device *md, struct dm_table *t)
{
	int r;
	struct queue_limits limits;
	enum dm_queue_mode type = FUNC5(md);

	switch (type) {
	case DM_TYPE_REQUEST_BASED:
		r = FUNC7(md, t);
		if (r) {
			FUNC0("Cannot initialize queue for request-based dm-mq mapped device");
			return r;
		}
		break;
	case DM_TYPE_BIO_BASED:
	case DM_TYPE_DAX_BIO_BASED:
	case DM_TYPE_NVME_BIO_BASED:
		FUNC6(md);
		FUNC2(md->queue, dm_make_request);
		break;
	case DM_TYPE_NONE:
		FUNC1(true);
		break;
	}

	r = FUNC4(t, &limits);
	if (r) {
		FUNC0("Cannot calculate initial queue limits");
		return r;
	}
	FUNC8(t, md->queue, &limits);
	FUNC3(md->disk);

	return 0;
}