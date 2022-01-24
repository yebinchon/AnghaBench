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
struct nau7802_state {int /*<<< orphan*/  data_lock; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct iio_dev*) ; 
 struct iio_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct nau7802_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC1(client);
	struct nau7802_state *st = FUNC3(indio_dev);

	FUNC2(indio_dev);
	FUNC4(&st->lock);
	FUNC4(&st->data_lock);
	if (client->irq)
		FUNC0(client->irq, indio_dev);

	return 0;
}