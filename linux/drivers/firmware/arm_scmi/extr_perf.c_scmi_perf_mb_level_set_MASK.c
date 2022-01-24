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
struct TYPE_4__ {struct scmi_perf_set_level* buf; } ;
struct TYPE_3__ {int poll_completion; } ;
struct scmi_xfer {TYPE_2__ tx; TYPE_1__ hdr; } ;
struct scmi_perf_set_level {void* level; void* domain; } ;
struct scmi_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_LEVEL_SET ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_PERF ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC2 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC3 (struct scmi_handle const*,struct scmi_xfer*) ; 

__attribute__((used)) static int FUNC4(const struct scmi_handle *handle, u32 domain,
				  u32 level, bool poll)
{
	int ret;
	struct scmi_xfer *t;
	struct scmi_perf_set_level *lvl;

	ret = FUNC2(handle, PERF_LEVEL_SET, SCMI_PROTOCOL_PERF,
				 sizeof(*lvl), 0, &t);
	if (ret)
		return ret;

	t->hdr.poll_completion = poll;
	lvl = t->tx.buf;
	lvl->domain = FUNC0(domain);
	lvl->level = FUNC0(level);

	ret = FUNC1(handle, t);

	FUNC3(handle, t);
	return ret;
}