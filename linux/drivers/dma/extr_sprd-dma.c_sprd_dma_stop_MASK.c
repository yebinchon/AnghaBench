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
struct sprd_dma_chn {int /*<<< orphan*/ * cur_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sprd_dma_chn*) ; 
 int /*<<< orphan*/  FUNC1 (struct sprd_dma_chn*) ; 
 int /*<<< orphan*/  FUNC2 (struct sprd_dma_chn*) ; 

__attribute__((used)) static void FUNC3(struct sprd_dma_chn *schan)
{
	FUNC1(schan);
	FUNC2(schan);
	FUNC0(schan);
	schan->cur_desc = NULL;
}