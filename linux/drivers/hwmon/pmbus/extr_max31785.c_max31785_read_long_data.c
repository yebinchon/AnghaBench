
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int rspbuf ;
typedef int cmdbuf ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int ) ;
 int pmbus_set_page (struct i2c_client*,int) ;

__attribute__((used)) static int max31785_read_long_data(struct i2c_client *client, int page,
       int reg, u32 *data)
{
 unsigned char cmdbuf[1];
 unsigned char rspbuf[4];
 int rc;

 struct i2c_msg msg[2] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = sizeof(cmdbuf),
   .buf = cmdbuf,
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = sizeof(rspbuf),
   .buf = rspbuf,
  },
 };

 cmdbuf[0] = reg;

 rc = pmbus_set_page(client, page);
 if (rc < 0)
  return rc;

 rc = i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
 if (rc < 0)
  return rc;

 *data = (rspbuf[0] << (0 * 8)) | (rspbuf[1] << (1 * 8)) |
  (rspbuf[2] << (2 * 8)) | (rspbuf[3] << (3 * 8));

 return rc;
}
