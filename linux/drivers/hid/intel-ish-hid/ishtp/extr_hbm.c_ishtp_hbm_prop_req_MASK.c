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
typedef  int uint8_t ;
struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int fw_client_presentation_num; unsigned long fw_client_index; int /*<<< orphan*/  devc; int /*<<< orphan*/  dev_state; TYPE_1__* fw_clients; int /*<<< orphan*/  hbm_state; int /*<<< orphan*/  fw_clients_map; } ;
struct hbm_props_request {unsigned long address; int /*<<< orphan*/  hbm_cmd; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  prop_req ;
struct TYPE_2__ {unsigned long client_id; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HOST_CLIENT_PROPERTIES_REQ_CMD ; 
 unsigned long ISHTP_CLIENTS_MAX ; 
 int /*<<< orphan*/  ISHTP_DEV_ENABLED ; 
 int /*<<< orphan*/  ISHTP_DEV_RESETTING ; 
 int /*<<< orphan*/  ISHTP_HBM_WORKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ishtp_msg_hdr*,int) ; 
 scalar_t__ FUNC5 (struct ishtp_device*,struct ishtp_msg_hdr*,struct hbm_props_request*) ; 

__attribute__((used)) static int FUNC6(struct ishtp_device *dev)
{
	struct ishtp_msg_hdr hdr;
	struct hbm_props_request prop_req = { 0 };
	unsigned long next_client_index;
	uint8_t client_num;

	client_num = dev->fw_client_presentation_num;

	next_client_index = FUNC1(dev->fw_clients_map,
		ISHTP_CLIENTS_MAX, dev->fw_client_index);

	/* We got all client properties */
	if (next_client_index == ISHTP_CLIENTS_MAX) {
		dev->hbm_state = ISHTP_HBM_WORKING;
		dev->dev_state = ISHTP_DEV_ENABLED;

		for (dev->fw_client_presentation_num = 1;
			dev->fw_client_presentation_num < client_num + 1;
				++dev->fw_client_presentation_num)
			/* Add new client device */
			FUNC3(dev);
		return 0;
	}

	dev->fw_clients[client_num].client_id = next_client_index;

	FUNC4(&hdr, sizeof(prop_req));

	prop_req.hbm_cmd = HOST_CLIENT_PROPERTIES_REQ_CMD;
	prop_req.address = next_client_index;

	if (FUNC5(dev, &hdr, &prop_req)) {
		dev->dev_state = ISHTP_DEV_RESETTING;
		FUNC0(dev->devc, "properties request send failed\n");
		FUNC2(dev);
		return -EIO;
	}

	dev->fw_client_index = next_client_index;

	return 0;
}