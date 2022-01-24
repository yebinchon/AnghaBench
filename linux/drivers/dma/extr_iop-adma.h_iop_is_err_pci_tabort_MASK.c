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
struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
#define  DMA0_ID 129 
#define  DMA1_ID 128 
 int FUNC0 (int,unsigned long*) ; 

__attribute__((used)) static inline int
FUNC1(unsigned long status, struct iop_adma_chan *chan)
{
	switch (chan->device->id) {
	case DMA0_ID:
	case DMA1_ID:
		return FUNC0(2, &status);
	default:
		return 0;
	}
}