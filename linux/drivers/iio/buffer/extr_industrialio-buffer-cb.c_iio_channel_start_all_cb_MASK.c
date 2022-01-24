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
struct iio_cb_buffer {int /*<<< orphan*/  buffer; int /*<<< orphan*/  indio_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(struct iio_cb_buffer *cb_buff)
{
	return FUNC0(cb_buff->indio_dev, &cb_buff->buffer,
				  NULL);
}