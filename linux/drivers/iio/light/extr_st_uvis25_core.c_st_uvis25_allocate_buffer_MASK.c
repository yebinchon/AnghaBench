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
struct st_uvis25_hw {int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct st_uvis25_hw* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st_uvis25_buffer_handler_thread ; 
 int /*<<< orphan*/  st_uvis25_buffer_ops ; 

__attribute__((used)) static int FUNC3(struct iio_dev *iio_dev)
{
	struct st_uvis25_hw *hw = FUNC1(iio_dev);

	return FUNC0(FUNC2(hw->regmap),
					       iio_dev, NULL,
					       st_uvis25_buffer_handler_thread,
					       &st_uvis25_buffer_ops);
}