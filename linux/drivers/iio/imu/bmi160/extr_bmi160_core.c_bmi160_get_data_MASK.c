#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct bmi160_data {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  sample ;
typedef  enum bmi160_sensor_type { ____Placeholder_bmi160_sensor_type } bmi160_sensor_type ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int IIO_MOD_X ; 
 TYPE_1__* bmi160_regs ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct bmi160_data *data, int chan_type,
			   int axis, int *val)
{
	u8 reg;
	int ret;
	__le16 sample;
	enum bmi160_sensor_type t = FUNC0(chan_type);

	reg = bmi160_regs[t].data + (axis - IIO_MOD_X) * sizeof(sample);

	ret = FUNC2(data->regmap, reg, &sample, sizeof(sample));
	if (ret)
		return ret;

	*val = FUNC3(FUNC1(sample), 15);

	return 0;
}