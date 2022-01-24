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
typedef  int dma_addr_t ;

/* Variables and functions */
 unsigned int ATC_BTSIZE_MAX ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(unsigned int reg_width, dma_addr_t buf_addr,
		size_t period_len)
{
	if (period_len > (ATC_BTSIZE_MAX << reg_width))
		goto err_out;
	if (FUNC0(period_len & ((1 << reg_width) - 1)))
		goto err_out;
	if (FUNC0(buf_addr & ((1 << reg_width) - 1)))
		goto err_out;

	return 0;

err_out:
	return -EINVAL;
}