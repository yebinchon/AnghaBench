
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct wf_lm87_sensor {TYPE_1__ sens; int * i2c; } ;
struct i2c_client {int dummy; } ;


 int DBG (char*,int ) ;
 struct wf_lm87_sensor* i2c_get_clientdata (struct i2c_client*) ;
 int wf_unregister_sensor (TYPE_1__*) ;

__attribute__((used)) static int wf_lm87_remove(struct i2c_client *client)
{
 struct wf_lm87_sensor *lm = i2c_get_clientdata(client);

 DBG("wf_lm87: i2c detatch called for %s\n", lm->sens.name);


 lm->i2c = ((void*)0);


 wf_unregister_sensor(&lm->sens);

 return 0;
}
