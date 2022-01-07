
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_bit_data {int udelay; } ;


 int sclhi (struct i2c_algo_bit_data*) ;
 int sdalo (struct i2c_algo_bit_data*) ;
 int setsda (struct i2c_algo_bit_data*,int) ;
 int udelay (int ) ;

__attribute__((used)) static void i2c_stop(struct i2c_algo_bit_data *adap)
{

 sdalo(adap);
 sclhi(adap);
 setsda(adap, 1);
 udelay(adap->udelay);
}
