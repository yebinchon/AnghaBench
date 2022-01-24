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
struct ib_device {int /*<<< orphan*/  unregistration_work; int /*<<< orphan*/  unreg_completion; int /*<<< orphan*/  compat_devs_mutex; int /*<<< orphan*/  compat_devs; int /*<<< orphan*/  client_data_rwsem; int /*<<< orphan*/  client_data; int /*<<< orphan*/  unregistration_lock; int /*<<< orphan*/  event_handler_lock; int /*<<< orphan*/  event_handler_list; int /*<<< orphan*/  coredev; int /*<<< orphan*/ ** groups; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  XA_FLAGS_ALLOC ; 
 int /*<<< orphan*/  ib_dev_attr_group ; 
 int /*<<< orphan*/  ib_unregister_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*) ; 
 struct ib_device* FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct ib_device *FUNC12(size_t size)
{
	struct ib_device *device;

	if (FUNC2(size < sizeof(struct ib_device)))
		return NULL;

	device = FUNC6(size, GFP_KERNEL);
	if (!device)
		return NULL;

	if (FUNC9(device)) {
		FUNC5(device);
		return NULL;
	}

	device->groups[0] = &ib_dev_attr_group;
	FUNC8(&device->coredev, device, &init_net);

	FUNC0(&device->event_handler_list);
	FUNC10(&device->event_handler_lock);
	FUNC7(&device->unregistration_lock);
	/*
	 * client_data needs to be alloc because we don't want our mark to be
	 * destroyed if the user stores NULL in the client data.
	 */
	FUNC11(&device->client_data, XA_FLAGS_ALLOC);
	FUNC4(&device->client_data_rwsem);
	FUNC11(&device->compat_devs, XA_FLAGS_ALLOC);
	FUNC7(&device->compat_devs_mutex);
	FUNC3(&device->unreg_completion);
	FUNC1(&device->unregistration_work, ib_unregister_work);

	return device;
}