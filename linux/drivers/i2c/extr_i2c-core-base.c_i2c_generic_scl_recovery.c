
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_bus_recovery_info {int (* unprepare_recovery ) (struct i2c_adapter*) ;int (* set_sda ) (struct i2c_adapter*,int) ;int (* set_scl ) (struct i2c_adapter*,int) ;int (* get_scl ) (struct i2c_adapter*) ;int (* prepare_recovery ) (struct i2c_adapter*) ;} ;
struct i2c_adapter {int dev; struct i2c_bus_recovery_info* bus_recovery_info; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int RECOVERY_CLK_CNT ;
 int RECOVERY_NDELAY ;
 int dev_err (int *,char*) ;
 int i2c_generic_bus_free (struct i2c_adapter*) ;
 int ndelay (int) ;
 int stub1 (struct i2c_adapter*) ;
 int stub2 (struct i2c_adapter*,int) ;
 int stub3 (struct i2c_adapter*,int) ;
 int stub4 (struct i2c_adapter*) ;
 int stub5 (struct i2c_adapter*,int) ;
 int stub6 (struct i2c_adapter*,int) ;
 int stub7 (struct i2c_adapter*) ;

int i2c_generic_scl_recovery(struct i2c_adapter *adap)
{
 struct i2c_bus_recovery_info *bri = adap->bus_recovery_info;
 int i = 0, scl = 1, ret = 0;

 if (bri->prepare_recovery)
  bri->prepare_recovery(adap);







 bri->set_scl(adap, scl);
 ndelay(RECOVERY_NDELAY / 2);
 if (bri->set_sda)
  bri->set_sda(adap, scl);
 ndelay(RECOVERY_NDELAY / 2);




 while (i++ < RECOVERY_CLK_CNT * 2) {
  if (scl) {

   if (!bri->get_scl(adap)) {
    dev_err(&adap->dev,
     "SCL is stuck low, exit recovery\n");
    ret = -EBUSY;
    break;
   }
  }

  scl = !scl;
  bri->set_scl(adap, scl);

  ndelay(RECOVERY_NDELAY / 2);
  if (bri->set_sda)
   bri->set_sda(adap, scl);
  ndelay(RECOVERY_NDELAY / 2);

  if (scl) {
   ret = i2c_generic_bus_free(adap);
   if (ret == 0)
    break;
  }
 }


 if (ret == -EOPNOTSUPP)
  ret = 0;

 if (bri->unprepare_recovery)
  bri->unprepare_recovery(adap);

 return ret;
}
