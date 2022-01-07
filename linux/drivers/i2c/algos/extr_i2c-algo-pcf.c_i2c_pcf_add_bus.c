
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_pcf_data {int dummy; } ;
struct i2c_adapter {int * algo; int dev; struct i2c_algo_pcf_data* algo_data; } ;


 int DEB2 (int ) ;
 int dev_dbg (int *,char*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int pcf_algo ;
 int pcf_init_8584 (struct i2c_algo_pcf_data*) ;

int i2c_pcf_add_bus(struct i2c_adapter *adap)
{
 struct i2c_algo_pcf_data *pcf_adap = adap->algo_data;
 int rval;

 DEB2(dev_dbg(&adap->dev, "hw routines registered.\n"));


 adap->algo = &pcf_algo;

 if ((rval = pcf_init_8584(pcf_adap)))
  return rval;

 rval = i2c_add_adapter(adap);

 return rval;
}
