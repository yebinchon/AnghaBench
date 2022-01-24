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
struct scmi_perf_info {int num_domains; struct perf_dom_info* dom_info; } ;
struct scmi_handle {struct scmi_perf_info* perf_priv; int /*<<< orphan*/ * perf_ops; int /*<<< orphan*/  dev; } ;
struct perf_dom_info {int /*<<< orphan*/  fc_info; scalar_t__ perf_fastchannels; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_PERF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct perf_dom_info* FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct scmi_perf_info* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  perf_ops ; 
 int /*<<< orphan*/  FUNC5 (struct scmi_handle*,struct scmi_perf_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct scmi_handle*,int,struct perf_dom_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct scmi_handle*,int,struct perf_dom_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct scmi_handle*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct scmi_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct scmi_handle *handle)
{
	int domain;
	u32 version;
	struct scmi_perf_info *pinfo;

	FUNC9(handle, SCMI_PROTOCOL_PERF, &version);

	FUNC2(handle->dev, "Performance Version %d.%d\n",
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
		struct perf_dom_info *dom = pinfo->dom_info + domain;

		FUNC7(handle, domain, dom);
		FUNC6(handle, domain, dom);

		if (dom->perf_fastchannels)
			FUNC8(handle, domain, &dom->fc_info);
	}

	handle->perf_ops = &perf_ops;
	handle->perf_priv = pinfo;

	return 0;
}