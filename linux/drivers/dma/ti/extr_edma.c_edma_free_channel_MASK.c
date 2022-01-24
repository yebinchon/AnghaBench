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
struct edma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edma_chan*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct edma_chan*) ; 

__attribute__((used)) static void FUNC2(struct edma_chan *echan)
{
	/* ensure no events are pending */
	FUNC1(echan);
	/* REVISIT should probably take out of shadow region 0 */
	FUNC0(echan, false);
}