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
typedef  int u32 ;
struct cpc925_dev_info {scalar_t__ vbase; } ;

/* Variables and functions */
 int HT_ERRCTRL_ENABLE ; 
 scalar_t__ REG_ERRCTRL_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct cpc925_dev_info *dev_info)
{
	u32 ht_errctrl;

	ht_errctrl = FUNC0(dev_info->vbase + REG_ERRCTRL_OFFSET);
	if ((ht_errctrl & HT_ERRCTRL_ENABLE) == 0) {
		ht_errctrl |= HT_ERRCTRL_ENABLE;
		FUNC1(ht_errctrl, dev_info->vbase + REG_ERRCTRL_OFFSET);
	}
}