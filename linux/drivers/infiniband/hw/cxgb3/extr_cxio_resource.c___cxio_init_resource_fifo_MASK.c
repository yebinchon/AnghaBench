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
struct kfifo {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RANDOM_SIZE ; 
 scalar_t__ FUNC0 (struct kfifo*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kfifo*,unsigned char*,int) ; 
 int FUNC2 (struct kfifo*,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct kfifo *fifo,
				   spinlock_t *fifo_lock,
				   u32 nr, u32 skip_low,
				   u32 skip_high,
				   int random)
{
	u32 i, j, entry = 0, idx;
	u32 random_bytes;
	u32 rarray[16];
	FUNC4(fifo_lock);

	if (FUNC0(fifo, nr * sizeof(u32), GFP_KERNEL))
		return -ENOMEM;

	for (i = 0; i < skip_low + skip_high; i++)
		FUNC1(fifo, (unsigned char *) &entry, sizeof(u32));
	if (random) {
		j = 0;
		random_bytes = FUNC3();
		for (i = 0; i < RANDOM_SIZE; i++)
			rarray[i] = i + skip_low;
		for (i = skip_low + RANDOM_SIZE; i < nr - skip_high; i++) {
			if (j >= RANDOM_SIZE) {
				j = 0;
				random_bytes = FUNC3();
			}
			idx = (random_bytes >> (j * 2)) & 0xF;
			FUNC1(fifo,
				(unsigned char *) &rarray[idx],
				sizeof(u32));
			rarray[idx] = i;
			j++;
		}
		for (i = 0; i < RANDOM_SIZE; i++)
			FUNC1(fifo,
				(unsigned char *) &rarray[i],
				sizeof(u32));
	} else
		for (i = skip_low; i < nr - skip_high; i++)
			FUNC1(fifo, (unsigned char *) &i, sizeof(u32));

	for (i = 0; i < skip_low + skip_high; i++)
		if (FUNC2(fifo, (unsigned char *) &entry,
				sizeof(u32), fifo_lock) != sizeof(u32))
					break;
	return 0;
}