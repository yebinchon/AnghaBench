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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct ad5761_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ad5761_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ad5761_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev, u8 addr, u16 val)
{
	struct ad5761_state *st = FUNC1(indio_dev);
	int ret;

	FUNC2(&indio_dev->mlock);
	ret = FUNC0(st, addr, val);
	FUNC3(&indio_dev->mlock);

	return ret;
}