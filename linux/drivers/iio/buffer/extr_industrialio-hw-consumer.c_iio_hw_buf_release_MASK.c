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
struct iio_buffer {int dummy; } ;
struct hw_consumer_buffer {int dummy; } ;

/* Variables and functions */
 struct hw_consumer_buffer* FUNC0 (struct iio_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_consumer_buffer*) ; 

__attribute__((used)) static void FUNC2(struct iio_buffer *buffer)
{
	struct hw_consumer_buffer *hw_buf =
		FUNC0(buffer);
	FUNC1(hw_buf);
}