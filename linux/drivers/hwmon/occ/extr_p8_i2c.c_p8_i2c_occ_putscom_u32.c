
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i2c_client {int dummy; } ;


 int memcpy (int *,int *,int) ;
 int p8_i2c_occ_putscom (struct i2c_client*,int ,int *) ;

__attribute__((used)) static int p8_i2c_occ_putscom_u32(struct i2c_client *client, u32 address,
      u32 data0, u32 data1)
{
 u8 buf[8];

 memcpy(buf, &data0, 4);
 memcpy(buf + 4, &data1, 4);

 return p8_i2c_occ_putscom(client, address, buf);
}
