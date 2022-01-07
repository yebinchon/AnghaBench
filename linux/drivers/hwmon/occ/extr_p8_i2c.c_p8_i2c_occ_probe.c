
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occ {int powr_sample_time_us; int poll_cmd_data; int send_cmd; int * bus_dev; } ;
struct p8_i2c_occ {struct occ occ; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (int *,struct occ*) ;
 struct p8_i2c_occ* devm_kzalloc (int *,int,int ) ;
 int occ_setup (struct occ*,char*) ;
 int p8_i2c_occ_send_cmd ;

__attribute__((used)) static int p8_i2c_occ_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct occ *occ;
 struct p8_i2c_occ *ctx = devm_kzalloc(&client->dev, sizeof(*ctx),
           GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->client = client;
 occ = &ctx->occ;
 occ->bus_dev = &client->dev;
 dev_set_drvdata(&client->dev, occ);

 occ->powr_sample_time_us = 250;
 occ->poll_cmd_data = 0x10;
 occ->send_cmd = p8_i2c_occ_send_cmd;

 return occ_setup(occ, "p8_occ");
}
