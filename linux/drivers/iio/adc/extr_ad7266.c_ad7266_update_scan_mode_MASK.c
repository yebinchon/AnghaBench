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
struct ad7266_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ad7266_state*,unsigned int) ; 
 unsigned int FUNC1 (unsigned long const*,int /*<<< orphan*/ ) ; 
 struct ad7266_state* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
	const unsigned long *scan_mask)
{
	struct ad7266_state *st = FUNC2(indio_dev);
	unsigned int nr = FUNC1(scan_mask, indio_dev->masklength);

	FUNC0(st, nr);

	return 0;
}