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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {struct scmi_perf_get_limits* buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct scmi_xfer {TYPE_1__ rx; TYPE_2__ tx; } ;
struct scmi_perf_get_limits {int /*<<< orphan*/  min_level; int /*<<< orphan*/  max_level; } ;
struct scmi_handle {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_LIMITS_GET ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_PERF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC3 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC4 (struct scmi_handle const*,struct scmi_xfer*) ; 

__attribute__((used)) static int FUNC5(const struct scmi_handle *handle, u32 domain,
				   u32 *max_perf, u32 *min_perf)
{
	int ret;
	struct scmi_xfer *t;
	struct scmi_perf_get_limits *limits;

	ret = FUNC3(handle, PERF_LIMITS_GET, SCMI_PROTOCOL_PERF,
				 sizeof(__le32), 0, &t);
	if (ret)
		return ret;

	FUNC1(domain, t->tx.buf);

	ret = FUNC2(handle, t);
	if (!ret) {
		limits = t->rx.buf;

		*max_perf = FUNC0(limits->max_level);
		*min_perf = FUNC0(limits->min_level);
	}

	FUNC4(handle, t);
	return ret;
}