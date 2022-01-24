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
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
struct scmi_xfer {TYPE_2__ rx; TYPE_1__ tx; } ;
struct scmi_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_STATE_GET ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC3 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC4 (struct scmi_handle const*,struct scmi_xfer*) ; 

__attribute__((used)) static int
FUNC5(const struct scmi_handle *handle, u32 domain, u32 *state)
{
	int ret;
	struct scmi_xfer *t;

	ret = FUNC3(handle, POWER_STATE_GET, SCMI_PROTOCOL_POWER,
				 sizeof(u32), sizeof(u32), &t);
	if (ret)
		return ret;

	FUNC1(domain, t->tx.buf);

	ret = FUNC2(handle, t);
	if (!ret)
		*state = FUNC0(t->rx.buf);

	FUNC4(handle, t);
	return ret;
}