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
struct dvb_ringbuffer {int /*<<< orphan*/  data; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (struct dvb_ringbuffer*) ; 
 int FUNC2 (struct dvb_ringbuffer*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC3(struct dvb_ringbuffer *buf,
				   const u8 *src, size_t len)
{
	ssize_t free;

	if (!len)
		return 0;
	if (!buf->data)
		return 0;

	free = FUNC1(buf);
	if (len > free) {
		FUNC0("buffer overflow\n");
		return -EOVERFLOW;
	}

	return FUNC2(buf, src, len);
}