
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct i2c_mux_core* i2c_get_clientdata (struct i2c_client*) ;
 int pca954x_cleanup (struct i2c_mux_core*) ;

__attribute__((used)) static int pca954x_remove(struct i2c_client *client)
{
 struct i2c_mux_core *muxc = i2c_get_clientdata(client);

 pca954x_cleanup(muxc);
 return 0;
}
