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
struct iio_buffer {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  iio_buffer_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct iio_buffer *buffer)
{
	if (buffer)
		FUNC0(&buffer->ref, iio_buffer_release);
}