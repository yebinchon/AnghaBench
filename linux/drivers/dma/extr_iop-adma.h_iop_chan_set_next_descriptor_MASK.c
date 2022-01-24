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
typedef  int /*<<< orphan*/  u32 ;
struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iop_adma_chan*) ; 
#define  AAU_ID 130 
#define  DMA0_ID 129 
#define  DMA1_ID 128 
 int /*<<< orphan*/  FUNC1 (struct iop_adma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct iop_adma_chan *chan,
						u32 next_desc_addr)
{
	int id = chan->device->id;

	switch (id) {
	case DMA0_ID:
	case DMA1_ID:
		FUNC2(next_desc_addr, FUNC1(chan));
		break;
	case AAU_ID:
		FUNC2(next_desc_addr, FUNC0(chan));
		break;
	}

}