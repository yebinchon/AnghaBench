
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct ad714x_chip {int * xfer_buf; int dev; } ;


 unsigned short be16_to_cpu (int ) ;
 int cpu_to_be16 (unsigned short) ;
 int dev_err (int *,char*,int) ;
 int i2c_master_recv (struct i2c_client*,int *,size_t) ;
 int i2c_master_send (struct i2c_client*,int *,int) ;
 struct i2c_client* to_i2c_client (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ad714x_i2c_read(struct ad714x_chip *chip,
      unsigned short reg, unsigned short *data, size_t len)
{
 struct i2c_client *client = to_i2c_client(chip->dev);
 int i;
 int error;

 chip->xfer_buf[0] = cpu_to_be16(reg);

 error = i2c_master_send(client, (u8 *)chip->xfer_buf,
    sizeof(*chip->xfer_buf));
 if (error >= 0)
  error = i2c_master_recv(client, (u8 *)chip->xfer_buf,
     len * sizeof(*chip->xfer_buf));

 if (unlikely(error < 0)) {
  dev_err(&client->dev, "I2C read error: %d\n", error);
  return error;
 }

 for (i = 0; i < len; i++)
  data[i] = be16_to_cpu(chip->xfer_buf[i]);

 return 0;
}
