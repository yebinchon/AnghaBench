
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct i2c_client {int dev; } ;
typedef int checksum_cmd ;


 int RAYDIUM_ACK_NULL ;
 int dev_err (int *,char*,int) ;
 int put_unaligned_le16 (size_t,int*) ;
 int raydium_i2c_write_object (struct i2c_client*,int*,int,int ) ;

__attribute__((used)) static int raydium_i2c_write_checksum(struct i2c_client *client,
          size_t length, u16 checksum)
{
 u8 checksum_cmd[] = { 0x00, 0x05, 0x6D, 0x00, 0x00, 0x00, 0x00 };
 int error;

 put_unaligned_le16(length, &checksum_cmd[3]);
 put_unaligned_le16(checksum, &checksum_cmd[5]);

 error = raydium_i2c_write_object(client,
      checksum_cmd, sizeof(checksum_cmd),
      RAYDIUM_ACK_NULL);
 if (error) {
  dev_err(&client->dev, "failed to write checksum: %d\n",
   error);
  return error;
 }

 return 0;
}
