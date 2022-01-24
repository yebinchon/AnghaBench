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
struct d40_chan {TYPE_1__* lcpa; } ;
struct TYPE_2__ {int /*<<< orphan*/  lcsp3; } ;

/* Variables and functions */
 int D40_CHAN_REG_SDLNK ; 
 int D40_MEM_LCSP3_DLOS_MASK ; 
 int D40_SREG_LNK_PHYS_LNK_MASK ; 
 int /*<<< orphan*/ * FUNC0 (struct d40_chan*) ; 
 scalar_t__ FUNC1 (struct d40_chan*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct d40_chan *d40c)
{
	bool is_link;

	if (FUNC1(d40c))
		is_link = FUNC2(&d40c->lcpa->lcsp3) &  D40_MEM_LCSP3_DLOS_MASK;
	else
		is_link = FUNC2(FUNC0(d40c) + D40_CHAN_REG_SDLNK)
			  & D40_SREG_LNK_PHYS_LNK_MASK;

	return is_link;
}