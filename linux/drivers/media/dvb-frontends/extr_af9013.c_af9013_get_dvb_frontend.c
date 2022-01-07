
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct dvb_frontend {int dummy; } ;
struct af9013_state {struct dvb_frontend fe; } ;


 int dev_dbg (int *,char*) ;
 struct af9013_state* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static struct dvb_frontend *af9013_get_dvb_frontend(struct i2c_client *client)
{
 struct af9013_state *state = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 return &state->fe;
}
