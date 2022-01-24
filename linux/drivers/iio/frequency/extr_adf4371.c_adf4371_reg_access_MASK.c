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
struct iio_dev {int dummy; } ;
struct adf4371_state {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 struct adf4371_state* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			      unsigned int reg,
			      unsigned int writeval,
			      unsigned int *readval)
{
	struct adf4371_state *st = FUNC0(indio_dev);

	if (readval)
		return FUNC1(st->regmap, reg, readval);
	else
		return FUNC2(st->regmap, reg, writeval);
}