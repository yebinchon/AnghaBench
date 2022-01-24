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
typedef  unsigned long long u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct hfi1_devdata {int /*<<< orphan*/ * misc_err_status_cnt; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int NUM_MISC_ERR_STATUS_COUNTERS ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned long long) ; 

__attribute__((used)) static void FUNC3(struct hfi1_devdata *dd, u32 unused, u64 reg)
{
	char buf[96];
	int i = 0;

	FUNC0(dd, "Misc Error: %s",
		    FUNC2(buf, sizeof(buf), reg));
	for (i = 0; i < NUM_MISC_ERR_STATUS_COUNTERS; i++) {
		if (reg & (1ull << i))
			FUNC1(&dd->misc_err_status_cnt[i]);
	}
}