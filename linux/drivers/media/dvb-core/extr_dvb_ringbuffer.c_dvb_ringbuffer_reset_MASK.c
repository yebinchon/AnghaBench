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
struct dvb_ringbuffer {scalar_t__ error; int /*<<< orphan*/  pwrite; int /*<<< orphan*/  pread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct dvb_ringbuffer *rbuf)
{
	/* dvb_ringbuffer_reset() counts as read and write operation
	 * smp_store_release() to update read pointer
	 */
	FUNC0(&rbuf->pread, 0);
	/* smp_store_release() to update write pointer */
	FUNC0(&rbuf->pwrite, 0);
	rbuf->error = 0;
}