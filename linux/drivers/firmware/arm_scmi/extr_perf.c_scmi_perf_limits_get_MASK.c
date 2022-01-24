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
typedef  int u32 ;
struct scmi_perf_info {struct perf_dom_info* dom_info; } ;
struct scmi_handle {struct scmi_perf_info* perf_priv; } ;
struct perf_dom_info {TYPE_1__* fc_info; } ;
struct TYPE_2__ {scalar_t__ limit_get_addr; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct scmi_handle const*,int,int*,int*) ; 

__attribute__((used)) static int FUNC2(const struct scmi_handle *handle, u32 domain,
				u32 *max_perf, u32 *min_perf)
{
	struct scmi_perf_info *pi = handle->perf_priv;
	struct perf_dom_info *dom = pi->dom_info + domain;

	if (dom->fc_info && dom->fc_info->limit_get_addr) {
		*max_perf = FUNC0(dom->fc_info->limit_get_addr);
		*min_perf = FUNC0(dom->fc_info->limit_get_addr + 4);
		return 0;
	}

	return FUNC1(handle, domain, max_perf, min_perf);
}