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
struct max30102_data {int /*<<< orphan*/  client; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MAX30102_REG_FIFO_DATA ; 
 unsigned int MAX30102_REG_FIFO_DATA_BYTES ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct max30102_data *data,
				     unsigned int measurements)
{
	int ret;
	u8 *buffer = (u8 *) &data->buffer;

	ret = FUNC1(data->client,
					    MAX30102_REG_FIFO_DATA,
					    measurements *
					    MAX30102_REG_FIFO_DATA_BYTES,
					    buffer);

	switch (measurements) {
	case 3:
		FUNC0(2);
		/* fall through */
	case 2:
		FUNC0(1);
		/* fall through */
	case 1:
		FUNC0(0);
		break;
	default:
		return -EINVAL;
	}

	return (ret == measurements * MAX30102_REG_FIFO_DATA_BYTES) ?
	       0 : -EINVAL;
}