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
struct lmp91000_data {int /*<<< orphan*/  cb_buffer; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct lmp91000_data* FUNC1 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev)
{
	struct lmp91000_data *data = FUNC1(indio_dev);

	return FUNC0(data->cb_buffer);
}