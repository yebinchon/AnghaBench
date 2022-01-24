#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct wacom_remote_data {int dummy; } ;
struct wacom_remote {TYPE_5__* remotes; int /*<<< orphan*/  remote_dir; int /*<<< orphan*/  remote_fifo; int /*<<< orphan*/  remote_lock; } ;
struct TYPE_12__ {TYPE_3__* groups; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_1__ features; } ;
struct wacom {TYPE_6__* hdev; TYPE_4__ led; struct wacom_remote* remote; TYPE_2__ wacom_wac; } ;
struct TYPE_15__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_14__ {TYPE_7__ dev; } ;
struct TYPE_13__ {scalar_t__ serial; int /*<<< orphan*/  group; } ;
struct TYPE_11__ {int /*<<< orphan*/  select; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ REMOTE ; 
 int WACOM_MAX_REMOTES ; 
 int /*<<< orphan*/  WACOM_STATUS_UNKNOWN ; 
 int FUNC0 (TYPE_7__*,int /*<<< orphan*/ ,struct wacom*) ; 
 struct wacom_remote* FUNC1 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  remote0_serial_group ; 
 int /*<<< orphan*/  remote1_serial_group ; 
 int /*<<< orphan*/  remote2_serial_group ; 
 int /*<<< orphan*/  remote3_serial_group ; 
 int /*<<< orphan*/  remote4_serial_group ; 
 int /*<<< orphan*/  remote_unpair_attrs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wacom_remotes_destroy ; 

__attribute__((used)) static int FUNC7(struct wacom *wacom)
{
	int error = 0;
	struct wacom_remote *remote;
	int i;

	if (wacom->wacom_wac.features.type != REMOTE)
		return 0;

	remote = FUNC1(&wacom->hdev->dev, sizeof(*wacom->remote),
			      GFP_KERNEL);
	if (!remote)
		return -ENOMEM;

	wacom->remote = remote;

	FUNC5(&remote->remote_lock);

	error = FUNC3(&remote->remote_fifo,
			5 * sizeof(struct wacom_remote_data),
			GFP_KERNEL);
	if (error) {
		FUNC2(wacom->hdev, "failed allocating remote_fifo\n");
		return -ENOMEM;
	}

	remote->remotes[0].group = remote0_serial_group;
	remote->remotes[1].group = remote1_serial_group;
	remote->remotes[2].group = remote2_serial_group;
	remote->remotes[3].group = remote3_serial_group;
	remote->remotes[4].group = remote4_serial_group;

	remote->remote_dir = FUNC4("wacom_remote",
						    &wacom->hdev->dev.kobj);
	if (!remote->remote_dir)
		return -ENOMEM;

	error = FUNC6(remote->remote_dir, remote_unpair_attrs);

	if (error) {
		FUNC2(wacom->hdev,
			"cannot create sysfs group err: %d\n", error);
		return error;
	}

	for (i = 0; i < WACOM_MAX_REMOTES; i++) {
		wacom->led.groups[i].select = WACOM_STATUS_UNKNOWN;
		remote->remotes[i].serial = 0;
	}

	error = FUNC0(&wacom->hdev->dev,
					 wacom_remotes_destroy, wacom);
	if (error)
		return error;

	return 0;
}