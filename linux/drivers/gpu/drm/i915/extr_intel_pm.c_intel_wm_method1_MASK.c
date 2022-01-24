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
typedef  unsigned int u64 ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int pixel_rate,
				     unsigned int cpp,
				     unsigned int latency)
{
	u64 ret;

	ret = FUNC1(pixel_rate, cpp * latency);
	ret = FUNC0(ret, 10000);

	return ret;
}