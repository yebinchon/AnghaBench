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
 int /*<<< orphan*/  FUNC1 () ; 
#define  DMA0_ID 129 
#define  DMA1_ID 128 
 int /*<<< orphan*/  FUNC2 (struct iop_adma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC4(struct iop_adma_chan *chan)
{
	int id = chan->device->id;

	switch (id) {
	case DMA0_ID:
	case DMA1_ID:
		return FUNC3(FUNC2(chan));
	case AAU_ID:
		return FUNC3(FUNC0(chan));
	default:
		FUNC1();
	}
	return 0;
}