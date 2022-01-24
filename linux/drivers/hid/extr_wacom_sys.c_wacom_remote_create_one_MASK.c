#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct wacom_remote {TYPE_7__* remotes; } ;
struct TYPE_13__ {int /*<<< orphan*/  pad_name; } ;
struct wacom {TYPE_4__ wacom_wac; TYPE_1__* hdev; struct wacom_remote* remote; } ;
struct device {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_14__ {scalar_t__ serial; int registered; TYPE_3__* input; TYPE_2__ group; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  uniq; } ;
struct TYPE_10__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WACOM_MAX_REMOTES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,TYPE_7__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (struct wacom*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct wacom*,unsigned int,int,int) ; 
 int FUNC6 (struct wacom*,scalar_t__,unsigned int) ; 
 int FUNC7 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC8(struct wacom *wacom, u32 serial,
				   unsigned int index)
{
	struct wacom_remote *remote = wacom->remote;
	struct device *dev = &wacom->hdev->dev;
	int error, k;

	/* A remote can pair more than once with an EKR,
	 * check to make sure this serial isn't already paired.
	 */
	for (k = 0; k < WACOM_MAX_REMOTES; k++) {
		if (remote->remotes[k].serial == serial)
			break;
	}

	if (k < WACOM_MAX_REMOTES) {
		remote->remotes[index].serial = serial;
		return 0;
	}

	if (!FUNC1(dev, &remote->remotes[index], GFP_KERNEL))
		return -ENOMEM;

	error = FUNC6(wacom, serial, index);
	if (error)
		goto fail;

	remote->remotes[index].input = FUNC4(wacom);
	if (!remote->remotes[index].input) {
		error = -ENOMEM;
		goto fail;
	}
	remote->remotes[index].input->uniq = remote->remotes[index].group.name;
	remote->remotes[index].input->name = wacom->wacom_wac.pad_name;

	if (!remote->remotes[index].input->name) {
		error = -EINVAL;
		goto fail;
	}

	error = FUNC7(remote->remotes[index].input,
						   &wacom->wacom_wac);
	if (error)
		goto fail;

	remote->remotes[index].serial = serial;

	error = FUNC3(remote->remotes[index].input);
	if (error)
		goto fail;

	error = FUNC5(
					&remote->remotes[index].input->dev,
					wacom, index, 3, true);
	if (error)
		goto fail;

	remote->remotes[index].registered = true;

	FUNC0(dev, &remote->remotes[index]);
	return 0;

fail:
	FUNC2(dev, &remote->remotes[index]);
	remote->remotes[index].serial = 0;
	return error;
}