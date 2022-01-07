
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ps8622_bridge {int max_lane_count; int lane_count; TYPE_2__* bl; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int brightness; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int EIO ;
 int ps8622_set (struct i2c_client*,int,int,int) ;

__attribute__((used)) static int ps8622_send_config(struct ps8622_bridge *ps8622)
{
 struct i2c_client *cl = ps8622->client;
 int err = 0;


 err = ps8622_set(cl, 0x02, 0xa1, 0x01);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x14, 0x01);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0xe3, 0x20);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0xe2, 0x80);
 if (err)
  goto error;





 err = ps8622_set(cl, 0x04, 0x8a, 0x0c);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x89, 0x08);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x71, 0x2d);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x7d, 0x07);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x7b, 0x00);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x7a, 0xfd);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0xc0, 0x12);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0xc1, 0x92);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0xc2, 0x1c);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x32, 0x80);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x00, 0xb0);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x15, 0x40);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x54, 0x10);
 if (err)
  goto error;



 err = ps8622_set(cl, 0x01, 0x02, 0x80 | ps8622->max_lane_count);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0x21, 0x80 | ps8622->lane_count);
 if (err)
  goto error;

 err = ps8622_set(cl, 0x00, 0x52, 0x20);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x00, 0xf1, 0x03);
 if (err)
  goto error;

 err = ps8622_set(cl, 0x00, 0x62, 0x41);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x00, 0xf6, 0x01);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x00, 0x77, 0x06);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x00, 0x4c, 0x04);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0xc0, 0x00);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0xc1, 0x1c);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0xc2, 0xf8);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0xc3, 0x44);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0xc4, 0x32);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0xc5, 0x53);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0xc6, 0x4c);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0xc7, 0x56);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0xc8, 0x35);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0xca, 0x01);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x01, 0xcb, 0x05);
 if (err)
  goto error;


 if (ps8622->bl) {

  err = ps8622_set(cl, 0x01, 0xa5, 0xa0);
  if (err)
   goto error;


  err = ps8622_set(cl, 0x01, 0xa7,
    ps8622->bl->props.brightness);
  if (err)
   goto error;
 } else {

  err = ps8622_set(cl, 0x01, 0xa5, 0x80);
  if (err)
   goto error;
 }


 err = ps8622_set(cl, 0x01, 0xcc, 0x13);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x02, 0xb1, 0x20);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x10, 0x16);
 if (err)
  goto error;



 err = ps8622_set(cl, 0x04, 0x59, 0x60);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x04, 0x54, 0x14);
 if (err)
  goto error;


 err = ps8622_set(cl, 0x02, 0xa1, 0x91);

error:
 return err ? -EIO : 0;
}
