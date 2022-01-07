
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct st_lsm6dsx_sensor {int odr; } ;
struct st_lsm6dsx_hw {int enable_mask; int * iio_devs; } ;


 int BIT (size_t) ;
 size_t ST_LSM6DSX_ID_ACC ;
 struct st_lsm6dsx_sensor* iio_priv (int ) ;
 int msleep (unsigned int) ;

__attribute__((used)) static void st_lsm6dsx_shub_wait_complete(struct st_lsm6dsx_hw *hw)
{
 struct st_lsm6dsx_sensor *sensor;
 u16 odr;

 sensor = iio_priv(hw->iio_devs[ST_LSM6DSX_ID_ACC]);
 odr = (hw->enable_mask & BIT(ST_LSM6DSX_ID_ACC)) ? sensor->odr : 13;
 msleep((2000U / odr) + 1);
}
