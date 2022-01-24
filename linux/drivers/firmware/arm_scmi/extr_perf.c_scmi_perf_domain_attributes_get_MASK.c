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
typedef  void* u32 ;
struct TYPE_4__ {struct scmi_msg_resp_perf_domain_attributes* buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
struct scmi_xfer {TYPE_2__ rx; TYPE_1__ tx; } ;
struct scmi_msg_resp_perf_domain_attributes {int /*<<< orphan*/  name; int /*<<< orphan*/  sustained_perf_level; int /*<<< orphan*/  sustained_freq_khz; int /*<<< orphan*/  flags; } ;
struct scmi_handle {int dummy; } ;
struct perf_dom_info {int sustained_freq_khz; int sustained_perf_level; int mult_factor; int /*<<< orphan*/  name; int /*<<< orphan*/  perf_fastchannels; int /*<<< orphan*/  perf_level_notify; int /*<<< orphan*/  perf_limit_notify; int /*<<< orphan*/  set_perf; int /*<<< orphan*/  set_limits; } ;
typedef  int /*<<< orphan*/  domain ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_DOMAIN_ATTRIBUTES ; 
 int /*<<< orphan*/  SCMI_MAX_STR_SIZE ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_PERF ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC8 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC9 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(const struct scmi_handle *handle, u32 domain,
				struct perf_dom_info *dom_info)
{
	int ret;
	struct scmi_xfer *t;
	struct scmi_msg_resp_perf_domain_attributes *attr;

	ret = FUNC8(handle, PERF_DOMAIN_ATTRIBUTES,
				 SCMI_PROTOCOL_PERF, sizeof(domain),
				 sizeof(*attr), &t);
	if (ret)
		return ret;

	FUNC6(domain, t->tx.buf);
	attr = t->rx.buf;

	ret = FUNC7(handle, t);
	if (!ret) {
		u32 flags = FUNC5(attr->flags);

		dom_info->set_limits = FUNC3(flags);
		dom_info->set_perf = FUNC4(flags);
		dom_info->perf_limit_notify = FUNC2(flags);
		dom_info->perf_level_notify = FUNC1(flags);
		dom_info->perf_fastchannels = FUNC0(flags);
		dom_info->sustained_freq_khz =
					FUNC5(attr->sustained_freq_khz);
		dom_info->sustained_perf_level =
					FUNC5(attr->sustained_perf_level);
		if (!dom_info->sustained_freq_khz ||
		    !dom_info->sustained_perf_level)
			/* CPUFreq converts to kHz, hence default 1000 */
			dom_info->mult_factor =	1000;
		else
			dom_info->mult_factor =
					(dom_info->sustained_freq_khz * 1000) /
					dom_info->sustained_perf_level;
		FUNC10(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
	}

	FUNC9(handle, t);
	return ret;
}