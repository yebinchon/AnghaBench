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
typedef  int /*<<< orphan*/  u16 ;
struct pms7003_frame {int /*<<< orphan*/  data; } ;
struct pms7003_state {int /*<<< orphan*/  lock; struct pms7003_frame frame; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_READ_PASSIVE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 size_t PM1 ; 
 size_t PM10 ; 
 size_t PM2P5 ; 
 int PMS7003_PM10_OFFSET ; 
 int PMS7003_PM1_OFFSET ; 
 int PMS7003_PM2P5_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct pms7003_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pms7003_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct pms7003_state *state = FUNC1(indio_dev);
	struct pms7003_frame *frame = &state->frame;
	u16 data[3 + 1 + 4]; /* PM1, PM2P5, PM10, padding, timestamp */
	int ret;

	FUNC4(&state->lock);
	ret = FUNC6(state, CMD_READ_PASSIVE);
	if (ret) {
		FUNC5(&state->lock);
		goto err;
	}

	data[PM1] = FUNC7(frame->data + PMS7003_PM1_OFFSET);
	data[PM2P5] = FUNC7(frame->data + PMS7003_PM2P5_OFFSET);
	data[PM10] = FUNC7(frame->data + PMS7003_PM10_OFFSET);
	FUNC5(&state->lock);

	FUNC2(indio_dev, data,
					   FUNC0(indio_dev));
err:
	FUNC3(indio_dev->trig);

	return IRQ_HANDLED;
}