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
typedef  int u64 ;
struct x38_error_info {int errsts; int errsts2; int* eccerrlog; } ;
struct mem_ctl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_EVENT_ERR_CORRECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 int X38_ECCERRLOG_CE ; 
 int X38_ECCERRLOG_UE ; 
 int X38_ERRSTS_BITS ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,char*,char*) ; 
 int x38_channel_num ; 

__attribute__((used)) static void FUNC3(struct mem_ctl_info *mci,
				struct x38_error_info *info)
{
	int channel;
	u64 log;

	if (!(info->errsts & X38_ERRSTS_BITS))
		return;

	if ((info->errsts ^ info->errsts2) & X38_ERRSTS_BITS) {
		FUNC2(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0,
				     -1, -1, -1,
				     "UE overwrote CE", "");
		info->errsts = info->errsts2;
	}

	for (channel = 0; channel < x38_channel_num; channel++) {
		log = info->eccerrlog[channel];
		if (log & X38_ECCERRLOG_UE) {
			FUNC2(HW_EVENT_ERR_UNCORRECTED, mci, 1,
					     0, 0, 0,
					     FUNC0(channel, log),
					     -1, -1,
					     "x38 UE", "");
		} else if (log & X38_ECCERRLOG_CE) {
			FUNC2(HW_EVENT_ERR_CORRECTED, mci, 1,
					     0, 0, FUNC1(log),
					     FUNC0(channel, log),
					     -1, -1,
					     "x38 CE", "");
		}
	}
}