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
struct adxl372_state {unsigned int watermark; unsigned int fifo_set_size; int /*<<< orphan*/  regmap; int /*<<< orphan*/  fifo_mode; int /*<<< orphan*/  fifo_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADXL372_FIFO_CTL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  ADXL372_FIFO_SAMPLES ; 
 int /*<<< orphan*/  ADXL372_FULL_BW_MEASUREMENT ; 
 int /*<<< orphan*/  ADXL372_STANDBY ; 
 int FUNC3 (struct adxl372_state*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct adxl372_state *st)
{
	unsigned int fifo_samples, fifo_ctl;
	int ret;

	/* FIFO must be configured while in standby mode */
	ret = FUNC3(st, ADXL372_STANDBY);
	if (ret < 0)
		return ret;

	/*
	 * watermark stores the number of sets; we need to write the FIFO
	 * registers with the number of samples
	 */
	fifo_samples = (st->watermark * st->fifo_set_size);
	fifo_ctl = FUNC0(st->fifo_format) |
		   FUNC1(st->fifo_mode) |
		   FUNC2(fifo_samples);

	ret = FUNC4(st->regmap,
			   ADXL372_FIFO_SAMPLES, fifo_samples & 0xFF);
	if (ret < 0)
		return ret;

	ret = FUNC4(st->regmap, ADXL372_FIFO_CTL, fifo_ctl);
	if (ret < 0)
		return ret;

	return FUNC3(st, ADXL372_FULL_BW_MEASUREMENT);
}