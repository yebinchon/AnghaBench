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
struct mem_ctl_info {int dummy; } ;
typedef  int /*<<< orphan*/  detail ;

/* Variables and functions */
 int /*<<< orphan*/  HW_EVENT_ERR_UNCORRECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int,unsigned int,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct mem_ctl_info *mci,
			    int chan,
			    unsigned bank,
			    unsigned rank,
			    unsigned long syndrome,
			    unsigned cas,
			    unsigned ras,
			    const char *msg)
{
	char detail[80];

	/* Form out message */
	FUNC1(detail, sizeof(detail),
		 "bank %u, cas %u, ras %u\n",
		 bank, cas, ras);

	FUNC0(HW_EVENT_ERR_UNCORRECTED, mci, 1,
			     0, 0, syndrome,
			     chan, rank, -1,
			     msg, detail);
}