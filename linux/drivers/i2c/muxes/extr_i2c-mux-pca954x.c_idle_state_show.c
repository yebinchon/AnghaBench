
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pca954x {int idle_state; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int READ_ONCE (int ) ;
 struct i2c_mux_core* i2c_get_clientdata (struct i2c_client*) ;
 struct pca954x* i2c_mux_priv (struct i2c_mux_core*) ;
 int sprintf (char*,char*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t idle_state_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct i2c_mux_core *muxc = i2c_get_clientdata(client);
 struct pca954x *data = i2c_mux_priv(muxc);

 return sprintf(buf, "%d\n", READ_ONCE(data->idle_state));
}
