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
typedef  void* u16 ;
struct TYPE_2__ {struct scmi_msg_resp_perf_attributes* buf; } ;
struct scmi_xfer {TYPE_1__ rx; } ;
struct scmi_perf_info {int stats_addr; int stats_size; int /*<<< orphan*/  power_scale_mw; void* num_domains; } ;
struct scmi_msg_resp_perf_attributes {int /*<<< orphan*/  stats_size; int /*<<< orphan*/  stats_addr_high; int /*<<< orphan*/  stats_addr_low; int /*<<< orphan*/  num_domains; int /*<<< orphan*/  flags; } ;
struct scmi_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  PROTOCOL_ATTRIBUTES ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_PERF ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC4 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC5 (struct scmi_handle const*,struct scmi_xfer*) ; 

__attribute__((used)) static int FUNC6(const struct scmi_handle *handle,
				    struct scmi_perf_info *pi)
{
	int ret;
	struct scmi_xfer *t;
	struct scmi_msg_resp_perf_attributes *attr;

	ret = FUNC4(handle, PROTOCOL_ATTRIBUTES,
				 SCMI_PROTOCOL_PERF, 0, sizeof(*attr), &t);
	if (ret)
		return ret;

	attr = t->rx.buf;

	ret = FUNC3(handle, t);
	if (!ret) {
		u16 flags = FUNC1(attr->flags);

		pi->num_domains = FUNC1(attr->num_domains);
		pi->power_scale_mw = FUNC0(flags);
		pi->stats_addr = FUNC2(attr->stats_addr_low) |
				(u64)FUNC2(attr->stats_addr_high) << 32;
		pi->stats_size = FUNC2(attr->stats_size);
	}

	FUNC5(handle, t);
	return ret;
}