
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt330x_state {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct lgdt330x_state* demodulator_priv; } ;


 int dev_dbg (int *,char*) ;
 int i2c_unregister_device (struct i2c_client*) ;

__attribute__((used)) static void lgdt330x_release(struct dvb_frontend *fe)
{
 struct lgdt330x_state *state = fe->demodulator_priv;
 struct i2c_client *client = state->client;

 dev_dbg(&client->dev, "\n");

 i2c_unregister_device(client);
}
