
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taos_data {int adapter; int client; } ;
struct serio {int dev; } ;


 int dev_info (int *,char*) ;
 int i2c_del_adapter (int *) ;
 int i2c_unregister_device (int ) ;
 int kfree (struct taos_data*) ;
 int serio_close (struct serio*) ;
 struct taos_data* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static void taos_disconnect(struct serio *serio)
{
 struct taos_data *taos = serio_get_drvdata(serio);

 i2c_unregister_device(taos->client);
 i2c_del_adapter(&taos->adapter);
 serio_close(serio);
 kfree(taos);

 dev_info(&serio->dev, "Disconnected from TAOS EVM\n");
}
