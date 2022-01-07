
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cxd {int regmap; } ;


 struct cxd* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct cxd*) ;
 int regmap_exit (int ) ;

__attribute__((used)) static int cxd2099_remove(struct i2c_client *client)
{
 struct cxd *ci = i2c_get_clientdata(client);

 regmap_exit(ci->regmap);
 kfree(ci);

 return 0;
}
