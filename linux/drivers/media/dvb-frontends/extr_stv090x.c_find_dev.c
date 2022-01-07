
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct stv090x_dev {struct stv090x_dev* next_dev; TYPE_1__* internal; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ i2c_addr; struct i2c_adapter* i2c_adap; } ;


 struct stv090x_dev* stv090x_first_dev ;

__attribute__((used)) static struct stv090x_dev *find_dev(struct i2c_adapter *i2c_adap,
     u8 i2c_addr)
{
 struct stv090x_dev *temp_dev = stv090x_first_dev;




 while ((temp_dev != ((void*)0)) &&
  ((temp_dev->internal->i2c_adap != i2c_adap) ||
  (temp_dev->internal->i2c_addr != i2c_addr))) {

  temp_dev = temp_dev->next_dev;
 }

 return temp_dev;
}
