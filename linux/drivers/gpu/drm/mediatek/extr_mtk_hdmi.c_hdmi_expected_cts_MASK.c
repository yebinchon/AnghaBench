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
 scalar_t__ FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int audio_sample_rate,
				      unsigned int tmds_clock, unsigned int n)
{
	return FUNC0((u64)FUNC1(tmds_clock) * n,
				     128 * audio_sample_rate);
}