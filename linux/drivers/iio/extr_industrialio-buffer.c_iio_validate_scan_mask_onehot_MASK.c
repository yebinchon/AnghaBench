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
struct iio_dev {int /*<<< orphan*/  masklength; } ;

/* Variables and functions */
 int FUNC0 (unsigned long const*,int /*<<< orphan*/ ) ; 

bool FUNC1(struct iio_dev *indio_dev,
	const unsigned long *mask)
{
	return FUNC0(mask, indio_dev->masklength) == 1;
}