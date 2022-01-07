
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;
typedef int s32 ;
struct TYPE_4__ {TYPE_1__* algo; } ;
struct TYPE_3__ {int (* smbus_xfer ) (struct i2c_adapter*,int,unsigned short,char,int ,int,union i2c_smbus_data*) ;} ;


 int ENXIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nforce2_lock ;
 TYPE_2__* nforce2_smbus ;
 int stub1 (struct i2c_adapter*,int,unsigned short,char,int ,int,union i2c_smbus_data*) ;

__attribute__((used)) static s32 nforce2_access_virt0(struct i2c_adapter *adap, u16 addr,
    unsigned short flags, char read_write,
    u8 command, int size,
    union i2c_smbus_data *data)
{
 int error;


 if ((addr & 0xfc) == 0x50 || (addr & 0xfc) == 0x30
  || addr == 0x18)
  return -ENXIO;

 mutex_lock(&nforce2_lock);
 error = nforce2_smbus->algo->smbus_xfer(adap, addr, flags, read_write,
      command, size, data);
 mutex_unlock(&nforce2_lock);

 return error;
}
