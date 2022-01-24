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
typedef  int u8 ;

/* Variables and functions */
 int PATTERN_COPY ; 
 int FUNC0 (unsigned int,int) ; 

__attribute__((used)) static void FUNC1(u8 **bufs, unsigned int start, unsigned int len,
		unsigned int buf_size, bool is_memset)
{
	unsigned int i;
	u8 *buf;

	for (; (buf = *bufs); bufs++) {
		for (i = 0; i < start; i++)
			buf[i] = FUNC0(i, is_memset);
		for ( ; i < start + len; i++)
			buf[i] = FUNC0(i, is_memset) | PATTERN_COPY;
		for ( ; i < buf_size; i++)
			buf[i] = FUNC0(i, is_memset);
		buf++;
	}
}