
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;


 int sis630_transaction_end (struct i2c_adapter*,int ) ;
 int sis630_transaction_start (struct i2c_adapter*,int,int *) ;
 int sis630_transaction_wait (struct i2c_adapter*,int) ;

__attribute__((used)) static int sis630_transaction(struct i2c_adapter *adap, int size)
{
 int result = 0;
 u8 oldclock = 0;

 result = sis630_transaction_start(adap, size, &oldclock);
 if (!result) {
  result = sis630_transaction_wait(adap, size);
  sis630_transaction_end(adap, oldclock);
 }

 return result;
}
