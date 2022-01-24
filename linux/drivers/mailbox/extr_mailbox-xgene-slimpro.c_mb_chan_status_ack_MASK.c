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
struct slimpro_mbox_chan {scalar_t__ reg; } ;

/* Variables and functions */
 int MBOX_STATUS_ACK_MASK ; 
 scalar_t__ REG_DB_STAT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct slimpro_mbox_chan *mb_chan)
{
	u32 val = FUNC0(mb_chan->reg + REG_DB_STAT);

	if (val & MBOX_STATUS_ACK_MASK) {
		FUNC1(MBOX_STATUS_ACK_MASK, mb_chan->reg + REG_DB_STAT);
		return 1;
	}
	return 0;
}