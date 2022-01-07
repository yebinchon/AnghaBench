
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;


 int AMS_DATAX ;
 int AMS_DATAY ;
 int AMS_DATAZ ;
 int ams_i2c_read (int ) ;

__attribute__((used)) static void ams_i2c_get_xyz(s8 *x, s8 *y, s8 *z)
{
 *x = ams_i2c_read(AMS_DATAX);
 *y = ams_i2c_read(AMS_DATAY);
 *z = ams_i2c_read(AMS_DATAZ);
}
