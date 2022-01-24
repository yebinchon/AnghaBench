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
struct sca3000_state {int* rx; int /*<<< orphan*/  lock; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCA3000_REG_REVID_ADDR ; 
 int SCA3000_REG_REVID_MAJOR_MASK ; 
 int SCA3000_REG_REVID_MINOR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct sca3000_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	int ret;
	struct sca3000_state *st = FUNC1(indio_dev);

	FUNC2(&st->lock);
	ret = FUNC4(st, SCA3000_REG_REVID_ADDR, 1);
	if (ret < 0)
		goto error_ret;
	FUNC0(&indio_dev->dev,
		 "sca3000 revision major=%lu, minor=%lu\n",
		 st->rx[0] & SCA3000_REG_REVID_MAJOR_MASK,
		 st->rx[0] & SCA3000_REG_REVID_MINOR_MASK);
error_ret:
	FUNC3(&st->lock);

	return ret;
}