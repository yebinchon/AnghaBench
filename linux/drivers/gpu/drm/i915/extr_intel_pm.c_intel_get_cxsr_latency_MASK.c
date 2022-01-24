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
struct cxsr_latency {int is_desktop; int is_ddr3; int fsb_freq; int mem_freq; } ;

/* Variables and functions */
 int FUNC0 (struct cxsr_latency*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct cxsr_latency* cxsr_latency_table ; 

__attribute__((used)) static const struct cxsr_latency *FUNC2(bool is_desktop,
							 bool is_ddr3,
							 int fsb,
							 int mem)
{
	const struct cxsr_latency *latency;
	int i;

	if (fsb == 0 || mem == 0)
		return NULL;

	for (i = 0; i < FUNC0(cxsr_latency_table); i++) {
		latency = &cxsr_latency_table[i];
		if (is_desktop == latency->is_desktop &&
		    is_ddr3 == latency->is_ddr3 &&
		    fsb == latency->fsb_freq && mem == latency->mem_freq)
			return latency;
	}

	FUNC1("Unknown FSB/MEM found, disable CxSR\n");

	return NULL;
}