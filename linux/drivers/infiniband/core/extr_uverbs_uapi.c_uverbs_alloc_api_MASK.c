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
struct uverbs_api {int /*<<< orphan*/  driver_id; int /*<<< orphan*/  radix; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver_id; } ;
struct ib_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  driver_def; TYPE_1__ ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct uverbs_api* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct uverbs_api* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct uverbs_api*) ; 
 int /*<<< orphan*/  FUNC5 (struct uverbs_api*) ; 
 int FUNC6 (struct uverbs_api*,struct ib_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  uverbs_core_api ; 
 int /*<<< orphan*/  FUNC7 (struct uverbs_api*) ; 

struct uverbs_api *FUNC8(struct ib_device *ibdev)
{
	struct uverbs_api *uapi;
	int rc;

	uapi = FUNC3(sizeof(*uapi), GFP_KERNEL);
	if (!uapi)
		return FUNC0(-ENOMEM);

	FUNC1(&uapi->radix, GFP_KERNEL);
	uapi->driver_id = ibdev->ops.driver_id;

	rc = FUNC6(uapi, ibdev, uverbs_core_api, false);
	if (rc)
		goto err;
	rc = FUNC6(uapi, ibdev, ibdev->driver_def, true);
	if (rc)
		goto err;

	FUNC5(uapi);
	rc = FUNC4(uapi);
	if (rc)
		goto err;

	return uapi;
err:
	if (rc != -ENOMEM)
		FUNC2(&ibdev->dev,
			"Setup of uverbs_api failed, kernel parsing tree description is not valid (%d)??\n",
			rc);

	FUNC7(uapi);
	return FUNC0(rc);
}