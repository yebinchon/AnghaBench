
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i2c_client {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int p8_i2c_occ_putscom_u32 (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static int p8_i2c_occ_putscom_be(struct i2c_client *client, u32 address,
     u8 *data)
{
 __be32 data0, data1;

 memcpy(&data0, data, 4);
 memcpy(&data1, data + 4, 4);

 return p8_i2c_occ_putscom_u32(client, address, be32_to_cpu(data0),
          be32_to_cpu(data1));
}
