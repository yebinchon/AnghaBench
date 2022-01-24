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
typedef  int u32 ;
struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
#define  AAU_ID 130 
 int /*<<< orphan*/  FUNC0 () ; 
#define  DMA0_ID 129 
#define  DMA1_ID 128 
 int /*<<< orphan*/  FUNC1 (struct iop_adma_chan*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct iop_adma_chan *chan)
{
	u32 status = FUNC2(FUNC1(chan));

	switch (chan->device->id) {
	case DMA0_ID:
	case DMA1_ID:
		status &= (1 << 5) | (1 << 3) | (1 << 2) | (1 << 1);
		break;
	case AAU_ID:
		status &= (1 << 5);
		break;
	default:
		FUNC0();
	}

	FUNC3(status, FUNC1(chan));
}