
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct sp2 {TYPE_1__ ca; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 int dvb_ca_en50221_release (TYPE_1__*) ;
 struct sp2* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int sp2_exit(struct i2c_client *client)
{
 struct sp2 *s;

 dev_dbg(&client->dev, "\n");

 if (!client)
  return 0;

 s = i2c_get_clientdata(client);
 if (!s)
  return 0;

 if (!s->ca.data)
  return 0;

 dvb_ca_en50221_release(&s->ca);

 return 0;
}
