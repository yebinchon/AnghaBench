#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
struct TYPE_5__ {int poll_completion; } ;
struct scmi_xfer {TYPE_1__ rx; TYPE_3__ tx; TYPE_2__ hdr; } ;
struct scmi_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_LEVEL_GET ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_PERF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC3 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC4 (struct scmi_handle const*,struct scmi_xfer*) ; 

__attribute__((used)) static int FUNC5(const struct scmi_handle *handle, u32 domain,
				  u32 *level, bool poll)
{
	int ret;
	struct scmi_xfer *t;

	ret = FUNC3(handle, PERF_LEVEL_GET, SCMI_PROTOCOL_PERF,
				 sizeof(u32), sizeof(u32), &t);
	if (ret)
		return ret;

	t->hdr.poll_completion = poll;
	FUNC1(domain, t->tx.buf);

	ret = FUNC2(handle, t);
	if (!ret)
		*level = FUNC0(t->rx.buf);

	FUNC4(handle, t);
	return ret;
}