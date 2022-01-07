
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
struct stv090x_state {struct dvb_frontend frontend; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct stv090x_state* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static struct dvb_frontend *stv090x_get_dvb_frontend(struct i2c_client *client)
{
 struct stv090x_state *state = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 return &state->frontend;
}
