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
struct TYPE_6__ {TYPE_2__* spi; } ;
struct ad7124_state {TYPE_3__ sd; TYPE_1__* channel_config; int /*<<< orphan*/ * vref; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {unsigned int refsel; int vref_mv; } ;

/* Variables and functions */
#define  AD7124_AVDD_REF 131 
#define  AD7124_INT_REF 130 
#define  AD7124_REFIN1 129 
#define  AD7124_REFIN2 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int* ad7124_ref_names ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ad7124_state *st,
				    unsigned int channel_number)
{
	unsigned int refsel = st->channel_config[channel_number].refsel;

	switch (refsel) {
	case AD7124_REFIN1:
	case AD7124_REFIN2:
	case AD7124_AVDD_REF:
		if (FUNC0(st->vref[refsel])) {
			FUNC2(&st->sd.spi->dev,
				"Error, trying to use external voltage reference without a %s regulator.\n",
				ad7124_ref_names[refsel]);
			return FUNC1(st->vref[refsel]);
		}
		st->channel_config[channel_number].vref_mv =
			FUNC3(st->vref[refsel]);
		/* Conversion from uV to mV */
		st->channel_config[channel_number].vref_mv /= 1000;
		break;
	case AD7124_INT_REF:
		st->channel_config[channel_number].vref_mv = 2500;
		break;
	default:
		FUNC2(&st->sd.spi->dev, "Invalid reference %d\n", refsel);
		return -EINVAL;
	}

	return 0;
}