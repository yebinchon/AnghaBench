
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct ad714x_chip {void** xfer_buf; int dev; } ;


 void* cpu_to_be16 (unsigned short) ;
 int dev_err (int *,char*,int) ;
 int i2c_master_send (struct i2c_client*,int *,int) ;
 struct i2c_client* to_i2c_client (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ad714x_i2c_write(struct ad714x_chip *chip,
       unsigned short reg, unsigned short data)
{
 struct i2c_client *client = to_i2c_client(chip->dev);
 int error;

 chip->xfer_buf[0] = cpu_to_be16(reg);
 chip->xfer_buf[1] = cpu_to_be16(data);

 error = i2c_master_send(client, (u8 *)chip->xfer_buf,
    2 * sizeof(*chip->xfer_buf));
 if (unlikely(error < 0)) {
  dev_err(&client->dev, "I2C write error: %d\n", error);
  return error;
 }

 return 0;
}
