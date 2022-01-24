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
struct hv_device {int /*<<< orphan*/  channel; } ;
struct TYPE_8__ {int balloon; int hot_add; int hot_add_alignment; } ;
struct TYPE_9__ {TYPE_3__ cap_bits; } ;
struct TYPE_7__ {int size; void* trans_id; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int /*<<< orphan*/  version; } ;
struct dm_version_request {int max_page_number; scalar_t__ min_page_cnt; TYPE_4__ caps; TYPE_2__ hdr; TYPE_1__ version; scalar_t__ is_last_attempt; } ;
struct dm_capabilities {int max_page_number; scalar_t__ min_page_cnt; TYPE_4__ caps; TYPE_2__ hdr; TYPE_1__ version; scalar_t__ is_last_attempt; } ;
struct TYPE_10__ {scalar_t__ state; int /*<<< orphan*/  host_event; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CAPABILITIES_REPORT ; 
 scalar_t__ DM_INIT_ERROR ; 
 int /*<<< orphan*/  DM_VERSION_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DYNMEM_PROTOCOL_VERSION_WIN10 ; 
 int EPROTO ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  VM_PKT_DATA_INBAND ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  balloon_onchannelcallback ; 
 TYPE_5__ dm_device ; 
 int /*<<< orphan*/  dm_ring_size ; 
 int /*<<< orphan*/  FUNC3 (struct dm_version_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trans_id ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hv_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct dm_version_request*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct hv_device *dev)
{
	struct dm_version_request version_req;
	struct dm_capabilities cap_msg;
	unsigned long t;
	int ret;

	ret = FUNC6(dev->channel, dm_ring_size, dm_ring_size, NULL, 0,
			 balloon_onchannelcallback, dev);
	if (ret)
		return ret;

	/*
	 * Initiate the hand shake with the host and negotiate
	 * a version that the host can support. We start with the
	 * highest version number and go down if the host cannot
	 * support it.
	 */
	FUNC3(&version_req, 0, sizeof(struct dm_version_request));
	version_req.hdr.type = DM_VERSION_REQUEST;
	version_req.hdr.size = sizeof(struct dm_version_request);
	version_req.hdr.trans_id = FUNC2(&trans_id);
	version_req.version.version = DYNMEM_PROTOCOL_VERSION_WIN10;
	version_req.is_last_attempt = 0;
	dm_device.version = version_req.version.version;

	ret = FUNC7(dev->channel, &version_req,
			       sizeof(struct dm_version_request),
			       (unsigned long)NULL, VM_PKT_DATA_INBAND, 0);
	if (ret)
		goto out;

	t = FUNC8(&dm_device.host_event, 5*HZ);
	if (t == 0) {
		ret = -ETIMEDOUT;
		goto out;
	}

	/*
	 * If we could not negotiate a compatible version with the host
	 * fail the probe function.
	 */
	if (dm_device.state == DM_INIT_ERROR) {
		ret = -EPROTO;
		goto out;
	}

	FUNC4("Using Dynamic Memory protocol version %u.%u\n",
		FUNC0(dm_device.version),
		FUNC1(dm_device.version));

	/*
	 * Now submit our capabilities to the host.
	 */
	FUNC3(&cap_msg, 0, sizeof(struct dm_capabilities));
	cap_msg.hdr.type = DM_CAPABILITIES_REPORT;
	cap_msg.hdr.size = sizeof(struct dm_capabilities);
	cap_msg.hdr.trans_id = FUNC2(&trans_id);

	cap_msg.caps.cap_bits.balloon = 1;
	cap_msg.caps.cap_bits.hot_add = 1;

	/*
	 * Specify our alignment requirements as it relates
	 * memory hot-add. Specify 128MB alignment.
	 */
	cap_msg.caps.cap_bits.hot_add_alignment = 7;

	/*
	 * Currently the host does not use these
	 * values and we set them to what is done in the
	 * Windows driver.
	 */
	cap_msg.min_page_cnt = 0;
	cap_msg.max_page_number = -1;

	ret = FUNC7(dev->channel, &cap_msg,
			       sizeof(struct dm_capabilities),
			       (unsigned long)NULL, VM_PKT_DATA_INBAND, 0);
	if (ret)
		goto out;

	t = FUNC8(&dm_device.host_event, 5*HZ);
	if (t == 0) {
		ret = -ETIMEDOUT;
		goto out;
	}

	/*
	 * If the host does not like our capabilities,
	 * fail the probe function.
	 */
	if (dm_device.state == DM_INIT_ERROR) {
		ret = -EPROTO;
		goto out;
	}

	return 0;
out:
	FUNC5(dev->channel);
	return ret;
}