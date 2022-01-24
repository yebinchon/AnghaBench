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

/* Variables and functions */
 unsigned int NVM_MAX_VLBA ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int nr_entries,
					   unsigned int threshold)
{
	unsigned int thr_sz = 1 << (FUNC0(threshold + NVM_MAX_VLBA));
	unsigned int max_sz = FUNC1(thr_sz, nr_entries);
	unsigned int max_io;

	/* Alloc a write buffer that can (i) fit at least two split bios
	 * (considering max I/O size NVM_MAX_VLBA, and (ii) guarantee that the
	 * threshold will be respected
	 */
	max_io = (1 << FUNC1((int)(FUNC0(max_sz)),
				(int)(FUNC0(NVM_MAX_VLBA << 1))));
	if ((threshold + NVM_MAX_VLBA) >= max_io)
		max_io <<= 1;

	return max_io;
}