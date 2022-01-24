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
typedef  int /*<<< orphan*/  u8 ;
struct dvb_ringbuffer {size_t pwrite; size_t size; scalar_t__ data; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t) ; 

ssize_t FUNC2(struct dvb_ringbuffer *rbuf, const u8 *buf, size_t len)
{
	size_t todo = len;
	size_t split;

	split = (rbuf->pwrite + len > rbuf->size) ? rbuf->size - rbuf->pwrite : 0;

	if (split > 0) {
		FUNC0(rbuf->data+rbuf->pwrite, buf, split);
		buf += split;
		todo -= split;
		/* smp_store_release() for write pointer update to ensure that
		 * written data is visible on other cpu cores before the pointer
		 * update, this pairs with smp_load_acquire() in
		 * dvb_ringbuffer_empty() or dvb_ringbuffer_avail()
		 */
		FUNC1(&rbuf->pwrite, 0);
	}
	FUNC0(rbuf->data+rbuf->pwrite, buf, todo);
	/* smp_store_release() for write pointer update, see above */
	FUNC1(&rbuf->pwrite, (rbuf->pwrite + todo) % rbuf->size);

	return len;
}