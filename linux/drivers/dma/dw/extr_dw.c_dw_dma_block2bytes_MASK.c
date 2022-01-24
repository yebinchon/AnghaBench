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
typedef  size_t u32 ;
struct dw_dma_chan {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 

__attribute__((used)) static size_t FUNC1(struct dw_dma_chan *dwc, u32 block, u32 width)
{
	return FUNC0(block) << width;
}