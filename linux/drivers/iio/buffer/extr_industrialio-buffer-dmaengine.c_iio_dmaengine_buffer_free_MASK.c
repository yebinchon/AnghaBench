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
struct dmaengine_buffer {int /*<<< orphan*/  chan; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_buffer*) ; 
 struct dmaengine_buffer* FUNC2 (struct iio_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct iio_buffer *buffer)
{
	struct dmaengine_buffer *dmaengine_buffer =
		FUNC2(buffer);

	FUNC3(&dmaengine_buffer->queue);
	FUNC0(dmaengine_buffer->chan);

	FUNC1(buffer);
}