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
struct st_lsm6dsx_sensor {int odr; struct st_lsm6dsx_hw* hw; } ;
struct st_lsm6dsx_hw {int dummy; } ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int IIO_VAL_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct st_lsm6dsx_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct st_lsm6dsx_sensor*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct st_lsm6dsx_sensor *sensor,
				   u8 addr, int *val)
{
	struct st_lsm6dsx_hw *hw = sensor->hw;
	int err, delay;
	__le16 data;

	err = FUNC2(sensor, true);
	if (err < 0)
		return err;

	delay = 1000000 / sensor->odr;
	FUNC3(delay, 2 * delay);

	err = FUNC1(hw, addr, &data, sizeof(data));
	if (err < 0)
		return err;

	FUNC2(sensor, false);

	*val = (s16)FUNC0(data);

	return IIO_VAL_INT;
}