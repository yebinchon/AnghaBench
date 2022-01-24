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
typedef  int u8 ;
struct ioatdma_chan {scalar_t__ reg_base; TYPE_1__* ioat_dma; } ;
struct TYPE_2__ {int version; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int IOAT_CHANCMD_RESET ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline bool FUNC2(struct ioatdma_chan *ioat_chan)
{
	u8 ver = ioat_chan->ioat_dma->version;
	u8 cmd;

	cmd = FUNC1(ioat_chan->reg_base + FUNC0(ver));
	return (cmd & IOAT_CHANCMD_RESET) == IOAT_CHANCMD_RESET;
}