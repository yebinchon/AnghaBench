
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct fts_data {int wdd; } ;


 struct fts_data* dev_get_drvdata (int *) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int fts_remove(struct i2c_client *client)
{
 struct fts_data *data = dev_get_drvdata(&client->dev);

 watchdog_unregister_device(&data->wdd);
 return 0;
}
