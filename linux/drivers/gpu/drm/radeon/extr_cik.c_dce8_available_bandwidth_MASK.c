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
struct dce8_wm_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dce8_wm_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct dce8_wm_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct dce8_wm_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct dce8_wm_params *wm)
{
	/* Calculate the Available bandwidth. Display can use this temporarily but not in average. */
	u32 dram_bandwidth = FUNC2(wm);
	u32 data_return_bandwidth = FUNC0(wm);
	u32 dmif_req_bandwidth = FUNC1(wm);

	return FUNC3(dram_bandwidth, FUNC3(data_return_bandwidth, dmif_req_bandwidth));
}