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
typedef  int u32 ;
struct sprd_dma_chn {int chn_base; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct sprd_dma_chn *schan, u32 reg,
				u32 mask, u32 val)
{
	u32 orig = FUNC0(schan->chn_base + reg);
	u32 tmp;

	tmp = (orig & ~mask) | val;
	FUNC1(tmp, schan->chn_base + reg);
}