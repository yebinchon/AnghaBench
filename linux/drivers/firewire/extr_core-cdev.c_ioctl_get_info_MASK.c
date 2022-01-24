#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fw_cdev_get_info {scalar_t__ rom; size_t rom_length; scalar_t__ bus_reset; int /*<<< orphan*/  bus_reset_closure; int /*<<< orphan*/  card; int /*<<< orphan*/  version; } ;
union ioctl_arg {struct fw_cdev_get_info get_info; } ;
struct fw_cdev_event_bus_reset {int dummy; } ;
struct client {TYPE_2__* device; int /*<<< orphan*/  link; int /*<<< orphan*/  bus_reset_closure; int /*<<< orphan*/  version; } ;
struct TYPE_4__ {int config_rom_length; int /*<<< orphan*/  client_list_mutex; int /*<<< orphan*/  client_list; struct fw_cdev_event_bus_reset* config_rom; TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FW_CDEV_KERNEL_VERSION ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,struct fw_cdev_event_bus_reset*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_cdev_event_bus_reset*,struct client*) ; 
 int /*<<< orphan*/  fw_device_rwsem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct client *client, union ioctl_arg *arg)
{
	struct fw_cdev_get_info *a = &arg->get_info;
	struct fw_cdev_event_bus_reset bus_reset;
	unsigned long ret = 0;

	client->version = a->version;
	a->version = FW_CDEV_KERNEL_VERSION;
	a->card = client->device->card->index;

	FUNC1(&fw_device_rwsem);

	if (a->rom != 0) {
		size_t want = a->rom_length;
		size_t have = client->device->config_rom_length * 4;

		ret = FUNC0(FUNC8(a->rom),
				   client->device->config_rom, FUNC5(want, have));
	}
	a->rom_length = client->device->config_rom_length * 4;

	FUNC9(&fw_device_rwsem);

	if (ret != 0)
		return -EFAULT;

	FUNC6(&client->device->client_list_mutex);

	client->bus_reset_closure = a->bus_reset_closure;
	if (a->bus_reset != 0) {
		FUNC2(&bus_reset, client);
		/* unaligned size of bus_reset is 36 bytes */
		ret = FUNC0(FUNC8(a->bus_reset), &bus_reset, 36);
	}
	if (ret == 0 && FUNC4(&client->link))
		FUNC3(&client->link, &client->device->client_list);

	FUNC7(&client->device->client_list_mutex);

	return ret ? -EFAULT : 0;
}