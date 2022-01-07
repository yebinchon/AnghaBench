
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occ {int dummy; } ;
struct i2c_client {int dev; } ;


 struct occ* dev_get_drvdata (int *) ;
 int occ_shutdown (struct occ*) ;

__attribute__((used)) static int p8_i2c_occ_remove(struct i2c_client *client)
{
 struct occ *occ = dev_get_drvdata(&client->dev);

 occ_shutdown(occ);

 return 0;
}
