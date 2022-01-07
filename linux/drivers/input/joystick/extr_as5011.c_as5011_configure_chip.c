
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct as5011_platform_data {int xp; int xn; int yp; int yn; } ;
struct as5011_device {struct i2c_client* i2c_client; } ;


 int AS5011_CTRL1 ;
 int AS5011_CTRL1_INT_ACT_EN ;
 int AS5011_CTRL1_LP_ACTIVE ;
 int AS5011_CTRL1_LP_PULSED ;
 int AS5011_CTRL1_SOFT_RST ;
 int AS5011_CTRL2 ;
 int AS5011_CTRL2_INV_SPINNING ;
 int AS5011_XN ;
 int AS5011_XP ;
 int AS5011_X_RES_INT ;
 int AS5011_YN ;
 int AS5011_YP ;
 int as5011_i2c_read (struct i2c_client*,int ,char*) ;
 int as5011_i2c_write (struct i2c_client*,int ,int) ;
 int dev_err (int *,char*) ;
 int mdelay (int) ;

__attribute__((used)) static int as5011_configure_chip(struct as5011_device *as5011,
    const struct as5011_platform_data *plat_dat)
{
 struct i2c_client *client = as5011->i2c_client;
 int error;
 signed char value;


 error = as5011_i2c_write(client, AS5011_CTRL1,
     AS5011_CTRL1_SOFT_RST);
 if (error < 0) {
  dev_err(&client->dev, "Soft reset failed\n");
  return error;
 }

 mdelay(10);

 error = as5011_i2c_write(client, AS5011_CTRL1,
     AS5011_CTRL1_LP_PULSED |
     AS5011_CTRL1_LP_ACTIVE |
     AS5011_CTRL1_INT_ACT_EN);
 if (error < 0) {
  dev_err(&client->dev, "Power config failed\n");
  return error;
 }

 error = as5011_i2c_write(client, AS5011_CTRL2,
     AS5011_CTRL2_INV_SPINNING);
 if (error < 0) {
  dev_err(&client->dev, "Can't invert spinning\n");
  return error;
 }


 error = as5011_i2c_write(client, AS5011_XP, plat_dat->xp);
 if (error < 0) {
  dev_err(&client->dev, "Can't write threshold\n");
  return error;
 }

 error = as5011_i2c_write(client, AS5011_XN, plat_dat->xn);
 if (error < 0) {
  dev_err(&client->dev, "Can't write threshold\n");
  return error;
 }

 error = as5011_i2c_write(client, AS5011_YP, plat_dat->yp);
 if (error < 0) {
  dev_err(&client->dev, "Can't write threshold\n");
  return error;
 }

 error = as5011_i2c_write(client, AS5011_YN, plat_dat->yn);
 if (error < 0) {
  dev_err(&client->dev, "Can't write threshold\n");
  return error;
 }


 error = as5011_i2c_read(client, AS5011_X_RES_INT, &value);
 if (error < 0) {
  dev_err(&client->dev, "Can't read i2c X resolution value\n");
  return error;
 }

 return 0;
}
