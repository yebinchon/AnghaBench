#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hv_vmbus_device_id {int dummy; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;
struct TYPE_7__ {int /*<<< orphan*/  wrk; } ;
struct TYPE_6__ {int /*<<< orphan*/  wrk; } ;
struct TYPE_8__ {int host_specified_ha_region; int /*<<< orphan*/  thread; int /*<<< orphan*/  state; TYPE_2__ ha_wrk; TYPE_1__ balloon_wrk; int /*<<< orphan*/  ha_lock; int /*<<< orphan*/  ha_region_list; int /*<<< orphan*/  config_event; int /*<<< orphan*/  host_event; int /*<<< orphan*/  next_version; struct hv_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_INITIALIZED ; 
 int /*<<< orphan*/  DM_INITIALIZING ; 
 int /*<<< orphan*/  DYNMEM_PROTOCOL_VERSION_WIN8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hv_device*) ; 
 int /*<<< orphan*/  balloon_up ; 
 TYPE_3__ dm_device ; 
 int /*<<< orphan*/  dm_thread_func ; 
 int do_hot_add ; 
 int hot_add ; 
 int /*<<< orphan*/  hot_add_req ; 
 int /*<<< orphan*/  hv_memory_nb ; 
 int /*<<< orphan*/  hv_online_page ; 
 int /*<<< orphan*/  FUNC5 (struct hv_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct hv_device *dev,
			 const struct hv_vmbus_device_id *dev_id)
{
	int ret;

#ifdef CONFIG_MEMORY_HOTPLUG
	do_hot_add = hot_add;
#else
	do_hot_add = false;
#endif
	dm_device.dev = dev;
	dm_device.state = DM_INITIALIZING;
	dm_device.next_version = DYNMEM_PROTOCOL_VERSION_WIN8;
	FUNC6(&dm_device.host_event);
	FUNC6(&dm_device.config_event);
	FUNC0(&dm_device.ha_region_list);
	FUNC11(&dm_device.ha_lock);
	FUNC1(&dm_device.balloon_wrk.wrk, balloon_up);
	FUNC1(&dm_device.ha_wrk.wrk, hot_add_req);
	dm_device.host_specified_ha_region = false;

#ifdef CONFIG_MEMORY_HOTPLUG
	set_online_page_callback(&hv_online_page);
	register_memory_notifier(&hv_memory_nb);
#endif

	FUNC5(dev, &dm_device);

	ret = FUNC4(dev);
	if (ret != 0)
		return ret;

	dm_device.state = DM_INITIALIZED;

	dm_device.thread =
		 FUNC7(dm_thread_func, &dm_device, "hv_balloon");
	if (FUNC2(dm_device.thread)) {
		ret = FUNC3(dm_device.thread);
		goto probe_error;
	}

	return 0;

probe_error:
	FUNC13(dev->channel);
#ifdef CONFIG_MEMORY_HOTPLUG
	unregister_memory_notifier(&hv_memory_nb);
	restore_online_page_callback(&hv_online_page);
#endif
	return ret;
}