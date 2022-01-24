#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 unsigned int MAX_ERROR_COUNT ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int,int,unsigned int,unsigned int,int,int) ; 
 int FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(u8 **bufs, unsigned int start,
		unsigned int end, unsigned int counter, u8 pattern,
		bool is_srcbuf, bool is_memset)
{
	unsigned int i;
	unsigned int error_count = 0;
	u8 actual;
	u8 expected;
	u8 *buf;
	unsigned int counter_orig = counter;

	for (; (buf = *bufs); bufs++) {
		counter = counter_orig;
		for (i = start; i < end; i++) {
			actual = buf[i];
			expected = pattern | FUNC1(counter, is_memset);
			if (actual != expected) {
				if (error_count < MAX_ERROR_COUNT)
					FUNC0(actual, pattern, i,
							 counter, is_srcbuf,
							 is_memset);
				error_count++;
			}
			counter++;
		}
	}

	if (error_count > MAX_ERROR_COUNT)
		FUNC2("%s: %u errors suppressed\n",
			current->comm, error_count - MAX_ERROR_COUNT);

	return error_count;
}