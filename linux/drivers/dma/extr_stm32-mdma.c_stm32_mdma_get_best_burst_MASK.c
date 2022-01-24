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
typedef  enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static u32 FUNC2(u32 buf_len, u32 tlen, u32 max_burst,
				     enum dma_slave_buswidth width)
{
	u32 best_burst;

	best_burst = FUNC1((u32)1 << FUNC0(tlen | buf_len),
			 max_burst * width) / width;

	return (best_burst > 0) ? best_burst : 1;
}