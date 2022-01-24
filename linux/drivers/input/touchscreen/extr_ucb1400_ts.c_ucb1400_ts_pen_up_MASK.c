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
struct ucb1400_ts {int /*<<< orphan*/  ac97; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_TS_CR ; 
 unsigned short UCB_TS_CR_TSMX_LOW ; 
 unsigned short UCB_TS_CR_TSPX_LOW ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct ucb1400_ts *ucb)
{
	unsigned short val = FUNC0(ucb->ac97, UCB_TS_CR);

	return val & (UCB_TS_CR_TSPX_LOW | UCB_TS_CR_TSMX_LOW);
}