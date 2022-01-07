
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {int dummy; } ;


 int flexcop_dvb_exit (struct flexcop_device*) ;
 int flexcop_frontend_exit (struct flexcop_device*) ;
 int flexcop_i2c_exit (struct flexcop_device*) ;

void flexcop_device_exit(struct flexcop_device *fc)
{
 flexcop_frontend_exit(fc);
 flexcop_i2c_exit(fc);
 flexcop_dvb_exit(fc);
}
