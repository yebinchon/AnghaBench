
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct drxk_state {int dummy; } ;


 int EIO ;
 int debug ;
 int dprintk (int,char*) ;
 int drxk_i2c_transfer (struct drxk_state*,struct i2c_msg*,int) ;
 int pr_cont (char*,...) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int i2c_write(struct drxk_state *state, u8 adr, u8 *data, int len)
{
 int status;
 struct i2c_msg msg = {
     .addr = adr, .flags = 0, .buf = data, .len = len };

 dprintk(3, ":");
 if (debug > 2) {
  int i;
  for (i = 0; i < len; i++)
   pr_cont(" %02x", data[i]);
  pr_cont("\n");
 }
 status = drxk_i2c_transfer(state, &msg, 1);
 if (status >= 0 && status != 1)
  status = -EIO;

 if (status < 0)
  pr_err("i2c write error at addr 0x%02x\n", adr);

 return status;
}
