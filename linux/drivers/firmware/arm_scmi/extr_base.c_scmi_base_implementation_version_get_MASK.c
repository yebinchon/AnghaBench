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
struct TYPE_2__ {int /*<<< orphan*/ * buf; } ;
struct scmi_xfer {TYPE_1__ rx; } ;
struct scmi_revision_info {int /*<<< orphan*/  impl_ver; } ;
struct scmi_handle {struct scmi_revision_info* version; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  BASE_DISCOVER_IMPLEMENT_VERSION ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC2 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC3 (struct scmi_handle const*,struct scmi_xfer*) ; 

__attribute__((used)) static int
FUNC4(const struct scmi_handle *handle)
{
	int ret;
	__le32 *impl_ver;
	struct scmi_xfer *t;
	struct scmi_revision_info *rev = handle->version;

	ret = FUNC2(handle, BASE_DISCOVER_IMPLEMENT_VERSION,
				 SCMI_PROTOCOL_BASE, 0, sizeof(*impl_ver), &t);
	if (ret)
		return ret;

	ret = FUNC1(handle, t);
	if (!ret) {
		impl_ver = t->rx.buf;
		rev->impl_ver = FUNC0(*impl_ver);
	}

	FUNC3(handle, t);

	return ret;
}