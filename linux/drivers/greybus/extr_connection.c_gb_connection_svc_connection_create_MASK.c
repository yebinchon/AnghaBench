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
typedef  int u8 ;
struct gb_interface {int /*<<< orphan*/  interface_id; } ;
struct gb_host_device {int /*<<< orphan*/  dev; TYPE_1__* svc; } ;
struct gb_connection {int /*<<< orphan*/  name; struct gb_host_device* hd; int /*<<< orphan*/  intf_cport_id; int /*<<< orphan*/  hd_cport_id; struct gb_interface* intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  ap_intf_id; } ;

/* Variables and functions */
 int GB_SVC_CPORT_FLAG_CSD_N ; 
 int GB_SVC_CPORT_FLAG_CSV_N ; 
 int GB_SVC_CPORT_FLAG_E2EFC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct gb_connection*) ; 
 scalar_t__ FUNC2 (struct gb_connection*) ; 
 scalar_t__ FUNC3 (struct gb_connection*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct gb_connection *connection)
{
	struct gb_host_device *hd = connection->hd;
	struct gb_interface *intf;
	u8 cport_flags;
	int ret;

	if (FUNC3(connection))
		return 0;

	intf = connection->intf;

	/*
	 * Enable either E2EFC or CSD, unless no flow control is requested.
	 */
	cport_flags = GB_SVC_CPORT_FLAG_CSV_N;
	if (FUNC2(connection)) {
		cport_flags |= GB_SVC_CPORT_FLAG_CSD_N;
	} else if (FUNC1(connection)) {
		cport_flags |= GB_SVC_CPORT_FLAG_CSD_N |
				GB_SVC_CPORT_FLAG_E2EFC;
	}

	ret = FUNC4(hd->svc,
				       hd->svc->ap_intf_id,
				       connection->hd_cport_id,
				       intf->interface_id,
				       connection->intf_cport_id,
				       cport_flags);
	if (ret) {
		FUNC0(&connection->hd->dev,
			"%s: failed to create svc connection: %d\n",
			connection->name, ret);
		return ret;
	}

	return 0;
}