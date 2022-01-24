#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct scmi_reset_info {int num_domains; struct reset_dom_info* dom_info; } ;
struct scmi_handle {struct scmi_reset_info* reset_priv; int /*<<< orphan*/ * reset_ops; int /*<<< orphan*/  dev; } ;
struct reset_dom_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct reset_dom_info* FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct scmi_reset_info* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset_ops ; 
 int /*<<< orphan*/  FUNC5 (struct scmi_handle*,struct scmi_reset_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct scmi_handle*,int,struct reset_dom_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct scmi_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct scmi_handle *handle)
{
	int domain;
	u32 version;
	struct scmi_reset_info *pinfo;

	FUNC7(handle, SCMI_PROTOCOL_RESET, &version);

	FUNC2(handle->dev, "Reset Version %d.%d\n",
		FUNC0(version), FUNC1(version));

	pinfo = FUNC4(handle->dev, sizeof(*pinfo), GFP_KERNEL);
	if (!pinfo)
		return -ENOMEM;

	FUNC5(handle, pinfo);

	pinfo->dom_info = FUNC3(handle->dev, pinfo->num_domains,
				       sizeof(*pinfo->dom_info), GFP_KERNEL);
	if (!pinfo->dom_info)
		return -ENOMEM;

	for (domain = 0; domain < pinfo->num_domains; domain++) {
		struct reset_dom_info *dom = pinfo->dom_info + domain;

		FUNC6(handle, domain, dom);
	}

	handle->reset_ops = &reset_ops;
	handle->reset_priv = pinfo;

	return 0;
}