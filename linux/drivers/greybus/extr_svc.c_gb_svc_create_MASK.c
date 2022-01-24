#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_4__* parent; int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; } ;
struct gb_svc {TYPE_1__ dev; int /*<<< orphan*/  connection; struct gb_host_device* hd; int /*<<< orphan*/  state; int /*<<< orphan*/  device_id_map; int /*<<< orphan*/  wq; } ;
struct TYPE_7__ {int /*<<< orphan*/  dma_mask; } ;
struct gb_host_device {int /*<<< orphan*/  bus_id; TYPE_4__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_SVC_CPORT_ID ; 
 int /*<<< orphan*/  GB_SVC_STATE_RESET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_host_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct gb_svc*) ; 
 int /*<<< orphan*/  gb_svc_request_handler ; 
 int /*<<< orphan*/  greybus_bus_type ; 
 int /*<<< orphan*/  greybus_svc_type ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_svc*) ; 
 struct gb_svc* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  svc_groups ; 

struct gb_svc *FUNC13(struct gb_host_device *hd)
{
	struct gb_svc *svc;

	svc = FUNC11(sizeof(*svc), GFP_KERNEL);
	if (!svc)
		return NULL;

	svc->wq = FUNC2("%s:svc", WQ_UNBOUND, 1, FUNC4(&hd->dev));
	if (!svc->wq) {
		FUNC10(svc);
		return NULL;
	}

	svc->dev.parent = &hd->dev;
	svc->dev.bus = &greybus_bus_type;
	svc->dev.type = &greybus_svc_type;
	svc->dev.groups = svc_groups;
	svc->dev.dma_mask = svc->dev.parent->dma_mask;
	FUNC6(&svc->dev);

	FUNC5(&svc->dev, "%d-svc", hd->bus_id);

	FUNC9(&svc->device_id_map);
	svc->state = GB_SVC_STATE_RESET;
	svc->hd = hd;

	svc->connection = FUNC7(hd, GB_SVC_CPORT_ID,
						      gb_svc_request_handler);
	if (FUNC0(svc->connection)) {
		FUNC3(&svc->dev, "failed to create connection: %ld\n",
			FUNC1(svc->connection));
		goto err_put_device;
	}

	FUNC8(svc->connection, svc);

	return svc;

err_put_device:
	FUNC12(&svc->dev);
	return NULL;
}