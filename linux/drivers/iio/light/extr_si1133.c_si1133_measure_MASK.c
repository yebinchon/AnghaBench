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
struct si1133_data {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct si1133_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct si1133_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct si1133_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct si1133_data *data,
			  struct iio_chan_spec const *chan,
			  int *val)
{
	int err;

	__be16 resp;

	err = FUNC4(data, 0, chan->channel);
	if (err)
		return err;

	/* Deactivate lux measurements if they were active */
	err = FUNC5(data, FUNC0(0));
	if (err)
		return err;

	err = FUNC3(data, FUNC1(0), sizeof(resp),
			       (u8 *)&resp);
	if (err)
		return err;

	*val = FUNC2(resp);

	return err;
}