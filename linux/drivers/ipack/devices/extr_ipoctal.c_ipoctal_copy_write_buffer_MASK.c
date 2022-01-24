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
struct TYPE_2__ {unsigned char* xmit_buf; } ;
struct ipoctal_channel {unsigned int pointer_read; int nb_bytes; int /*<<< orphan*/  lock; TYPE_1__ tty_port; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC2(struct ipoctal_channel *channel,
					    const unsigned char *buf,
					    int count)
{
	unsigned long flags;
	int i;
	unsigned int *pointer_read = &channel->pointer_read;

	/* Copy the bytes from the user buffer to the internal one */
	for (i = 0; i < count; i++) {
		if (i <= (PAGE_SIZE - channel->nb_bytes)) {
			FUNC0(&channel->lock, flags);
			channel->tty_port.xmit_buf[*pointer_read] = buf[i];
			*pointer_read = (*pointer_read + 1) % PAGE_SIZE;
			channel->nb_bytes++;
			FUNC1(&channel->lock, flags);
		} else {
			break;
		}
	}
	return i;
}