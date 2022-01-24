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
struct iio_buffer {int /*<<< orphan*/  pollq; TYPE_1__* access; } ;
struct TYPE_2__ {int (* store_to ) (struct iio_buffer*,void const*) ;} ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 void* FUNC0 (struct iio_buffer*,void const*) ; 
 int FUNC1 (struct iio_buffer*,void const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct iio_buffer *buffer, const void *data)
{
	const void *dataout = FUNC0(buffer, data);
	int ret;

	ret = buffer->access->store_to(buffer, dataout);
	if (ret)
		return ret;

	/*
	 * We can't just test for watermark to decide if we wake the poll queue
	 * because read may request less samples than the watermark.
	 */
	FUNC2(&buffer->pollq, EPOLLIN | EPOLLRDNORM);
	return 0;
}