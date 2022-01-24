#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
struct i3c_master_controller {TYPE_3__ bus; int /*<<< orphan*/  dev; } ;
struct i3c_ibi_setup {scalar_t__ handler; int /*<<< orphan*/  num_slots; int /*<<< orphan*/  max_payload_len; } ;
struct i3c_device_info {scalar_t__ dyn_addr; } ;
struct TYPE_9__ {scalar_t__ dyn_addr; int /*<<< orphan*/  pid; int /*<<< orphan*/  static_addr; } ;
struct i3c_dev_desc {TYPE_5__* dev; int /*<<< orphan*/  ibi_lock; TYPE_4__ info; TYPE_2__* boardinfo; TYPE_1__* ibi; } ;
struct TYPE_10__ {struct i3c_dev_desc* desc; } ;
struct TYPE_7__ {scalar_t__ init_dyn_addr; } ;
struct TYPE_6__ {scalar_t__ enabled; int /*<<< orphan*/  num_slots; int /*<<< orphan*/  max_payload_len; scalar_t__ handler; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct i3c_dev_desc*) ; 
 int FUNC1 (struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i3c_dev_desc*) ; 
 int FUNC4 (struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct i3c_dev_desc*) ; 
 int FUNC6 (struct i3c_dev_desc*,struct i3c_ibi_setup*) ; 
 struct i3c_dev_desc* FUNC7 (struct i3c_master_controller*,struct i3c_device_info*) ; 
 int FUNC8 (struct i3c_master_controller*,struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC9 (struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC10 (struct i3c_dev_desc*) ; 
 int FUNC11 (struct i3c_dev_desc*,scalar_t__) ; 
 int FUNC12 (struct i3c_dev_desc*) ; 
 struct i3c_dev_desc* FUNC13 (struct i3c_dev_desc*) ; 
 int FUNC14 (struct i3c_master_controller*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct i3c_master_controller *master,
				  u8 addr)
{
	struct i3c_device_info info = { .dyn_addr = addr };
	struct i3c_dev_desc *newdev, *olddev;
	u8 old_dyn_addr = addr, expected_dyn_addr;
	struct i3c_ibi_setup ibireq = { };
	bool enable_ibi = false;
	int ret;

	if (!master)
		return -EINVAL;

	newdev = FUNC7(master, &info);
	if (FUNC0(newdev))
		return FUNC1(newdev);

	ret = FUNC8(master, newdev);
	if (ret)
		goto err_free_dev;

	ret = FUNC12(newdev);
	if (ret)
		goto err_detach_dev;

	olddev = FUNC13(newdev);
	if (olddev) {
		newdev->boardinfo = olddev->boardinfo;
		newdev->info.static_addr = olddev->info.static_addr;
		newdev->dev = olddev->dev;
		if (newdev->dev)
			newdev->dev->desc = newdev;

		/*
		 * We need to restore the IBI state too, so let's save the
		 * IBI information and try to restore them after olddev has
		 * been detached+released and its IBI has been stopped and
		 * the associated resources have been freed.
		 */
		FUNC15(&olddev->ibi_lock);
		if (olddev->ibi) {
			ibireq.handler = olddev->ibi->handler;
			ibireq.max_payload_len = olddev->ibi->max_payload_len;
			ibireq.num_slots = olddev->ibi->num_slots;

			if (olddev->ibi->enabled) {
				enable_ibi = true;
				FUNC3(olddev);
			}

			FUNC5(olddev);
		}
		FUNC16(&olddev->ibi_lock);

		old_dyn_addr = olddev->info.dyn_addr;

		FUNC9(olddev);
		FUNC10(olddev);
	}

	ret = FUNC11(newdev, old_dyn_addr);
	if (ret)
		goto err_detach_dev;

	/*
	 * Depending on our previous state, the expected dynamic address might
	 * differ:
	 * - if the device already had a dynamic address assigned, let's try to
	 *   re-apply this one
	 * - if the device did not have a dynamic address and the firmware
	 *   requested a specific address, pick this one
	 * - in any other case, keep the address automatically assigned by the
	 *   master
	 */
	if (old_dyn_addr && old_dyn_addr != newdev->info.dyn_addr)
		expected_dyn_addr = old_dyn_addr;
	else if (newdev->boardinfo && newdev->boardinfo->init_dyn_addr)
		expected_dyn_addr = newdev->boardinfo->init_dyn_addr;
	else
		expected_dyn_addr = newdev->info.dyn_addr;

	if (newdev->info.dyn_addr != expected_dyn_addr) {
		/*
		 * Try to apply the expected dynamic address. If it fails, keep
		 * the address assigned by the master.
		 */
		ret = FUNC14(master,
						 newdev->info.dyn_addr,
						 expected_dyn_addr);
		if (!ret) {
			old_dyn_addr = newdev->info.dyn_addr;
			newdev->info.dyn_addr = expected_dyn_addr;
			FUNC11(newdev, old_dyn_addr);
		} else {
			FUNC2(&master->dev,
				"Failed to assign reserved/old address to device %d%llx",
				master->bus.id, newdev->info.pid);
		}
	}

	/*
	 * Now is time to try to restore the IBI setup. If we're lucky,
	 * everything works as before, otherwise, all we can do is complain.
	 * FIXME: maybe we should add callback to inform the driver that it
	 * should request the IBI again instead of trying to hide that from
	 * him.
	 */
	if (ibireq.handler) {
		FUNC15(&newdev->ibi_lock);
		ret = FUNC6(newdev, &ibireq);
		if (ret) {
			FUNC2(&master->dev,
				"Failed to request IBI on device %d-%llx",
				master->bus.id, newdev->info.pid);
		} else if (enable_ibi) {
			ret = FUNC4(newdev);
			if (ret)
				FUNC2(&master->dev,
					"Failed to re-enable IBI on device %d-%llx",
					master->bus.id, newdev->info.pid);
		}
		FUNC16(&newdev->ibi_lock);
	}

	return 0;

err_detach_dev:
	if (newdev->dev && newdev->dev->desc)
		newdev->dev->desc = NULL;

	FUNC9(newdev);

err_free_dev:
	FUNC10(newdev);

	return ret;
}