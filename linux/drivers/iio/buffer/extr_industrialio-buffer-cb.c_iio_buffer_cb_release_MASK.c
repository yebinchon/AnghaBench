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
struct TYPE_2__ {int /*<<< orphan*/  scan_mask; } ;
struct iio_cb_buffer {TYPE_1__ buffer; } ;
struct iio_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct iio_cb_buffer* FUNC1 (struct iio_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_cb_buffer*) ; 

__attribute__((used)) static void FUNC3(struct iio_buffer *buffer)
{
	struct iio_cb_buffer *cb_buff = FUNC1(buffer);

	FUNC0(cb_buff->buffer.scan_mask);
	FUNC2(cb_buff);
}