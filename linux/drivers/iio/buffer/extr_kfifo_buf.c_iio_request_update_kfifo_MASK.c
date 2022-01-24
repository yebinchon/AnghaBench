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
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  bytes_per_datum; } ;
struct iio_kfifo {int update_needed; int /*<<< orphan*/  user_lock; int /*<<< orphan*/  kf; TYPE_1__ buffer; } ;
struct iio_buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iio_kfifo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iio_kfifo* FUNC1 (struct iio_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_buffer *r)
{
	int ret = 0;
	struct iio_kfifo *buf = FUNC1(r);

	FUNC4(&buf->user_lock);
	if (buf->update_needed) {
		FUNC2(&buf->kf);
		ret = FUNC0(buf, buf->buffer.bytes_per_datum,
				   buf->buffer.length);
		if (ret >= 0)
			buf->update_needed = false;
	} else {
		FUNC3(&buf->kf);
	}
	FUNC5(&buf->user_lock);

	return ret;
}