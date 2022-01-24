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
struct device {int /*<<< orphan*/  dma_mask; struct device* parent; int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; } ;
struct gb_host_device {int bus_id; size_t buffer_size_max; size_t num_cports; struct device dev; int /*<<< orphan*/  svc; int /*<<< orphan*/  cport_id_map; int /*<<< orphan*/  connections; int /*<<< orphan*/  modules; struct gb_hd_driver* driver; } ;
struct gb_hd_driver {scalar_t__ hd_priv_size; int /*<<< orphan*/  message_cancel; int /*<<< orphan*/  message_send; } ;

/* Variables and functions */
 int CPORT_ID_MAX ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct gb_host_device* FUNC0 (int) ; 
 size_t GB_OPERATION_MESSAGE_SIZE_MAX ; 
 size_t GB_OPERATION_MESSAGE_SIZE_MIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bus_groups ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  gb_hd_bus_id_map ; 
 int /*<<< orphan*/  FUNC6 (struct gb_host_device*) ; 
 int /*<<< orphan*/  greybus_bus_type ; 
 int /*<<< orphan*/  greybus_hd_type ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_host_device*) ; 
 struct gb_host_device* FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct gb_host_device*) ; 

struct gb_host_device *FUNC13(struct gb_hd_driver *driver,
				    struct device *parent,
				    size_t buffer_size_max,
				    size_t num_cports)
{
	struct gb_host_device *hd;
	int ret;

	/*
	 * Validate that the driver implements all of the callbacks
	 * so that we don't have to every time we make them.
	 */
	if ((!driver->message_send) || (!driver->message_cancel)) {
		FUNC2(parent, "mandatory hd-callbacks missing\n");
		return FUNC0(-EINVAL);
	}

	if (buffer_size_max < GB_OPERATION_MESSAGE_SIZE_MIN) {
		FUNC2(parent, "greybus host-device buffers too small\n");
		return FUNC0(-EINVAL);
	}

	if (num_cports == 0 || num_cports > CPORT_ID_MAX + 1) {
		FUNC2(parent, "Invalid number of CPorts: %zu\n", num_cports);
		return FUNC0(-EINVAL);
	}

	/*
	 * Make sure to never allocate messages larger than what the Greybus
	 * protocol supports.
	 */
	if (buffer_size_max > GB_OPERATION_MESSAGE_SIZE_MAX) {
		FUNC4(parent, "limiting buffer size to %u\n",
			 GB_OPERATION_MESSAGE_SIZE_MAX);
		buffer_size_max = GB_OPERATION_MESSAGE_SIZE_MAX;
	}

	hd = FUNC10(sizeof(*hd) + driver->hd_priv_size, GFP_KERNEL);
	if (!hd)
		return FUNC0(-ENOMEM);

	ret = FUNC8(&gb_hd_bus_id_map, 1, 0, GFP_KERNEL);
	if (ret < 0) {
		FUNC9(hd);
		return FUNC0(ret);
	}
	hd->bus_id = ret;

	hd->driver = driver;
	FUNC1(&hd->modules);
	FUNC1(&hd->connections);
	FUNC7(&hd->cport_id_map);
	hd->buffer_size_max = buffer_size_max;
	hd->num_cports = num_cports;

	hd->dev.parent = parent;
	hd->dev.bus = &greybus_bus_type;
	hd->dev.type = &greybus_hd_type;
	hd->dev.groups = bus_groups;
	hd->dev.dma_mask = hd->dev.parent->dma_mask;
	FUNC5(&hd->dev);
	FUNC3(&hd->dev, "greybus%d", hd->bus_id);

	FUNC12(hd);

	hd->svc = FUNC6(hd);
	if (!hd->svc) {
		FUNC2(&hd->dev, "failed to create svc\n");
		FUNC11(&hd->dev);
		return FUNC0(-ENOMEM);
	}

	return hd;
}