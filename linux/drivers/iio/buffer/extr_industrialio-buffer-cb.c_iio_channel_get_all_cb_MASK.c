#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iio_channel {TYPE_2__* channel; TYPE_1__* indio_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * scan_mask; int /*<<< orphan*/  demux_list; int /*<<< orphan*/ * access; } ;
struct iio_cb_buffer {int (* cb ) (void const*,void*) ;struct iio_channel* channels; TYPE_3__ buffer; TYPE_1__* indio_dev; void* private; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  scan_index; } ;
struct TYPE_4__ {int /*<<< orphan*/  masklength; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct iio_cb_buffer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct iio_channel*) ; 
 int FUNC3 (struct iio_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  iio_cb_access ; 
 struct iio_channel* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_channel*) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_cb_buffer*) ; 
 struct iio_cb_buffer* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct iio_cb_buffer *FUNC12(struct device *dev,
					     int (*cb)(const void *data,
						       void *private),
					     void *private)
{
	int ret;
	struct iio_cb_buffer *cb_buff;
	struct iio_channel *chan;

	cb_buff = FUNC10(sizeof(*cb_buff), GFP_KERNEL);
	if (cb_buff == NULL)
		return FUNC0(-ENOMEM);

	FUNC6(&cb_buff->buffer);

	cb_buff->private = private;
	cb_buff->cb = cb;
	cb_buff->buffer.access = &iio_cb_access;
	FUNC1(&cb_buff->buffer.demux_list);

	cb_buff->channels = FUNC7(dev);
	if (FUNC2(cb_buff->channels)) {
		ret = FUNC3(cb_buff->channels);
		goto error_free_cb_buff;
	}

	cb_buff->indio_dev = cb_buff->channels[0].indio_dev;
	cb_buff->buffer.scan_mask = FUNC5(cb_buff->indio_dev->masklength,
						  GFP_KERNEL);
	if (cb_buff->buffer.scan_mask == NULL) {
		ret = -ENOMEM;
		goto error_release_channels;
	}
	chan = &cb_buff->channels[0];
	while (chan->indio_dev) {
		if (chan->indio_dev != cb_buff->indio_dev) {
			ret = -EINVAL;
			goto error_free_scan_mask;
		}
		FUNC11(chan->channel->scan_index,
			cb_buff->buffer.scan_mask);
		chan++;
	}

	return cb_buff;

error_free_scan_mask:
	FUNC4(cb_buff->buffer.scan_mask);
error_release_channels:
	FUNC8(cb_buff->channels);
error_free_cb_buff:
	FUNC9(cb_buff);
	return FUNC0(ret);
}