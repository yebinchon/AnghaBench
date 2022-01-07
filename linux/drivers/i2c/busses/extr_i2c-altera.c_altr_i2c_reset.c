
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altr_i2c_dev {int dummy; } ;


 int altr_i2c_core_disable (struct altr_i2c_dev*) ;
 int altr_i2c_core_enable (struct altr_i2c_dev*) ;

__attribute__((used)) static void altr_i2c_reset(struct altr_i2c_dev *idev)
{
 altr_i2c_core_disable(idev);
 altr_i2c_core_enable(idev);
}
