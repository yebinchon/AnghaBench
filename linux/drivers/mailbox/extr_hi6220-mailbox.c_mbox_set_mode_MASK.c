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
struct hi6220_mbox {scalar_t__ base; } ;

/* Variables and functions */
 int MBOX_ACK_CONFIG_MASK ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct hi6220_mbox *mbox,
			  unsigned int slot, u32 val)
{
	u32 mode;

	mode = FUNC1(mbox->base + FUNC0(slot));
	mode = (mode & ~MBOX_ACK_CONFIG_MASK) | val;
	FUNC2(mode, mbox->base + FUNC0(slot));
}