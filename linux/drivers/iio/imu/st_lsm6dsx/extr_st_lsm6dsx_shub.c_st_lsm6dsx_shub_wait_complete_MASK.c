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
typedef  unsigned int u16 ;
struct st_lsm6dsx_sensor {int odr; } ;
struct st_lsm6dsx_hw {int enable_mask; int /*<<< orphan*/ * iio_devs; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 size_t ST_LSM6DSX_ID_ACC ; 
 struct st_lsm6dsx_sensor* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(struct st_lsm6dsx_hw *hw)
{
	struct st_lsm6dsx_sensor *sensor;
	u16 odr;

	sensor = FUNC1(hw->iio_devs[ST_LSM6DSX_ID_ACC]);
	odr = (hw->enable_mask & FUNC0(ST_LSM6DSX_ID_ACC)) ? sensor->odr : 13;
	FUNC2((2000U / odr) + 1);
}