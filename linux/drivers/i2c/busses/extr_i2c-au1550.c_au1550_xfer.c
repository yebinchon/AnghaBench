
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; scalar_t__ len; int buf; int addr; } ;
struct i2c_au1550_data {int dummy; } ;
struct i2c_adapter {struct i2c_au1550_data* algo_data; } ;


 int I2C_M_RD ;
 int PSC_CTRL ;
 int PSC_CTRL_ENABLE ;
 int PSC_CTRL_SUSPEND ;
 int WR (struct i2c_au1550_data*,int ,int ) ;
 int do_address (struct i2c_au1550_data*,int ,int,int) ;
 int i2c_read (struct i2c_au1550_data*,int ,scalar_t__) ;
 int i2c_write (struct i2c_au1550_data*,int ,scalar_t__) ;

__attribute__((used)) static int
au1550_xfer(struct i2c_adapter *i2c_adap, struct i2c_msg *msgs, int num)
{
 struct i2c_au1550_data *adap = i2c_adap->algo_data;
 struct i2c_msg *p;
 int i, err = 0;

 WR(adap, PSC_CTRL, PSC_CTRL_ENABLE);

 for (i = 0; !err && i < num; i++) {
  p = &msgs[i];
  err = do_address(adap, p->addr, p->flags & I2C_M_RD,
     (p->len == 0));
  if (err || !p->len)
   continue;
  if (p->flags & I2C_M_RD)
   err = i2c_read(adap, p->buf, p->len);
  else
   err = i2c_write(adap, p->buf, p->len);
 }



 if (err == 0)
  err = num;

 WR(adap, PSC_CTRL, PSC_CTRL_SUSPEND);

 return err;
}
