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
struct ioatdma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ioatdma_chan*) ; 
 scalar_t__ ioat_pending_level ; 
 scalar_t__ FUNC1 (struct ioatdma_chan*) ; 

__attribute__((used)) static void FUNC2(struct ioatdma_chan *ioat_chan)
{
	if (FUNC1(ioat_chan) > ioat_pending_level)
		FUNC0(ioat_chan);
}