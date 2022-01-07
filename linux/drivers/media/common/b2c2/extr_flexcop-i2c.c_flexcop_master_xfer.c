
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {scalar_t__ flags; int len; int * buf; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct flexcop_i2c_adapter {TYPE_1__* fc; } ;
struct TYPE_2__ {int (* i2c_request ) (struct flexcop_i2c_adapter*,int ,int ,int ,int *,int) ;int i2c_mutex; } ;


 int ERESTARTSYS ;
 int FC_READ ;
 int FC_WRITE ;
 scalar_t__ I2C_M_RD ;
 int deb_i2c (char*) ;
 struct flexcop_i2c_adapter* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct flexcop_i2c_adapter*,int ,int ,int ,int *,int) ;
 int stub2 (struct flexcop_i2c_adapter*,int ,int ,int ,int *,int) ;

__attribute__((used)) static int flexcop_master_xfer(struct i2c_adapter *i2c_adap,
  struct i2c_msg msgs[], int num)
{
 struct flexcop_i2c_adapter *i2c = i2c_get_adapdata(i2c_adap);
 int i, ret = 0;





 if (num == 1 && msgs[0].flags == I2C_M_RD && msgs[0].len <= 1)
  return 1;

 if (mutex_lock_interruptible(&i2c->fc->i2c_mutex))
  return -ERESTARTSYS;

 for (i = 0; i < num; i++) {

  if (i+1 < num && (msgs[i+1].flags == I2C_M_RD)) {
   ret = i2c->fc->i2c_request(i2c, FC_READ, msgs[i].addr,
     msgs[i].buf[0], msgs[i+1].buf,
     msgs[i+1].len);
   i++;
  } else
   ret = i2c->fc->i2c_request(i2c, FC_WRITE, msgs[i].addr,
     msgs[i].buf[0], &msgs[i].buf[1],
     msgs[i].len - 1);
  if (ret < 0) {
   deb_i2c("i2c master_xfer failed");
   break;
  }
 }

 mutex_unlock(&i2c->fc->i2c_mutex);

 if (ret == 0)
  ret = num;
 return ret;
}
