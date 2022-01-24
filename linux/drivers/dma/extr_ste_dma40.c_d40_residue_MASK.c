#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int data_width; } ;
struct TYPE_6__ {TYPE_2__ dst_info; } ;
struct d40_chan {TYPE_3__ dma_cfg; TYPE_1__* lcpa; } ;
struct TYPE_4__ {int /*<<< orphan*/  lcsp2; } ;

/* Variables and functions */
 int D40_CHAN_REG_SDELT ; 
 int D40_MEM_LCSP2_ECNT_MASK ; 
 int D40_MEM_LCSP2_ECNT_POS ; 
 int D40_SREG_ELEM_PHY_ECNT_MASK ; 
 int D40_SREG_ELEM_PHY_ECNT_POS ; 
 int /*<<< orphan*/ * FUNC0 (struct d40_chan*) ; 
 scalar_t__ FUNC1 (struct d40_chan*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC3(struct d40_chan *d40c)
{
	u32 num_elt;

	if (FUNC1(d40c))
		num_elt = (FUNC2(&d40c->lcpa->lcsp2) & D40_MEM_LCSP2_ECNT_MASK)
			>> D40_MEM_LCSP2_ECNT_POS;
	else {
		u32 val = FUNC2(FUNC0(d40c) + D40_CHAN_REG_SDELT);
		num_elt = (val & D40_SREG_ELEM_PHY_ECNT_MASK)
			  >> D40_SREG_ELEM_PHY_ECNT_POS;
	}

	return num_elt * d40c->dma_cfg.dst_info.data_width;
}