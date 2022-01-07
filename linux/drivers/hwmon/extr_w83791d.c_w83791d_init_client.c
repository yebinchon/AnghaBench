
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83791d_data {int vrm; } ;
struct i2c_client {int dummy; } ;


 int W83791D_REG_BEEP_CONFIG ;
 int * W83791D_REG_BEEP_CTRL ;
 int W83791D_REG_CONFIG ;
 int W83791D_REG_TEMP2_CONFIG ;
 int W83791D_REG_TEMP3_CONFIG ;
 struct w83791d_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ init ;
 scalar_t__ reset ;
 int vid_which_vrm () ;
 int w83791d_read (struct i2c_client*,int ) ;
 int w83791d_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static void w83791d_init_client(struct i2c_client *client)
{
 struct w83791d_data *data = i2c_get_clientdata(client);
 u8 tmp;
 u8 old_beep;
 if (reset || init) {

  old_beep = w83791d_read(client, W83791D_REG_BEEP_CONFIG);

  if (reset) {

   w83791d_write(client, W83791D_REG_CONFIG, 0x80);
  }


  w83791d_write(client, W83791D_REG_BEEP_CONFIG, old_beep | 0x80);


  tmp = w83791d_read(client, W83791D_REG_BEEP_CTRL[1]);
  w83791d_write(client, W83791D_REG_BEEP_CTRL[1], tmp & 0xef);

  if (init) {

   tmp = w83791d_read(client, W83791D_REG_TEMP2_CONFIG);
   if (tmp & 1) {
    w83791d_write(client, W83791D_REG_TEMP2_CONFIG,
     tmp & 0xfe);
   }

   tmp = w83791d_read(client, W83791D_REG_TEMP3_CONFIG);
   if (tmp & 1) {
    w83791d_write(client, W83791D_REG_TEMP3_CONFIG,
     tmp & 0xfe);
   }


   tmp = w83791d_read(client, W83791D_REG_CONFIG) & 0xf7;
   w83791d_write(client, W83791D_REG_CONFIG, tmp | 0x01);
  }
 }

 data->vrm = vid_which_vrm();
}
