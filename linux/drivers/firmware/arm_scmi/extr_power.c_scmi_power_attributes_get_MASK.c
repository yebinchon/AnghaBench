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
typedef  int u64 ;
struct TYPE_2__ {struct scmi_msg_resp_power_attributes* buf; } ;
struct scmi_xfer {TYPE_1__ rx; } ;
struct scmi_power_info {int stats_addr; int stats_size; int /*<<< orphan*/  num_domains; } ;
struct scmi_msg_resp_power_attributes {int /*<<< orphan*/  stats_size; int /*<<< orphan*/  stats_addr_high; int /*<<< orphan*/  stats_addr_low; int /*<<< orphan*/  num_domains; } ;
struct scmi_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_ATTRIBUTES ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC3 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC4 (struct scmi_handle const*,struct scmi_xfer*) ; 

__attribute__((used)) static int FUNC5(const struct scmi_handle *handle,
				     struct scmi_power_info *pi)
{
	int ret;
	struct scmi_xfer *t;
	struct scmi_msg_resp_power_attributes *attr;

	ret = FUNC3(handle, PROTOCOL_ATTRIBUTES,
				 SCMI_PROTOCOL_POWER, 0, sizeof(*attr), &t);
	if (ret)
		return ret;

	attr = t->rx.buf;

	ret = FUNC2(handle, t);
	if (!ret) {
		pi->num_domains = FUNC0(attr->num_domains);
		pi->stats_addr = FUNC1(attr->stats_addr_low) |
				(u64)FUNC1(attr->stats_addr_high) << 32;
		pi->stats_size = FUNC1(attr->stats_size);
	}

	FUNC4(handle, t);
	return ret;
}