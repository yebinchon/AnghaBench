
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i2c_client {int dummy; } ;
typedef int ssize_t ;
typedef int buf ;


 int EIO ;
 int i2c_master_send (struct i2c_client*,char const*,int) ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static int p8_i2c_occ_putscom(struct i2c_client *client, u32 address, u8 *data)
{
 u32 buf[3];
 ssize_t rc;


 address <<= 1;


 buf[0] = address;
 memcpy(&buf[1], &data[4], sizeof(u32));
 memcpy(&buf[2], data, sizeof(u32));

 rc = i2c_master_send(client, (const char *)buf, sizeof(buf));
 if (rc < 0)
  return rc;
 else if (rc != sizeof(buf))
  return -EIO;

 return 0;
}
