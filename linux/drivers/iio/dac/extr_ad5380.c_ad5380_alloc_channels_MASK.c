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
struct iio_dev {struct iio_chan_spec* channels; } ;
struct iio_chan_spec {unsigned int channel; unsigned int address; } ;
struct ad5380_state {TYPE_1__* chip_info; } ;
struct TYPE_2__ {unsigned int num_channels; struct iio_chan_spec channel_template; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ad5380_state* FUNC0 (struct iio_dev*) ; 
 struct iio_chan_spec* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev)
{
	struct ad5380_state *st = FUNC0(indio_dev);
	struct iio_chan_spec *channels;
	unsigned int i;

	channels = FUNC1(st->chip_info->num_channels,
			   sizeof(struct iio_chan_spec), GFP_KERNEL);

	if (!channels)
		return -ENOMEM;

	for (i = 0; i < st->chip_info->num_channels; ++i) {
		channels[i] = st->chip_info->channel_template;
		channels[i].channel = i;
		channels[i].address = i;
	}

	indio_dev->channels = channels;

	return 0;
}