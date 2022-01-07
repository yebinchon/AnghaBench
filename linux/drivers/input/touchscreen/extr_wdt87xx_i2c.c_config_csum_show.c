
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int xmls_id1; int xmls_id2; } ;
struct wdt87xx_data {TYPE_1__ param; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct wdt87xx_data* i2c_get_clientdata (struct i2c_client*) ;
 int scnprintf (char*,int ,char*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t config_csum_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct wdt87xx_data *wdt = i2c_get_clientdata(client);
 u32 cfg_csum;

 cfg_csum = wdt->param.xmls_id1;
 cfg_csum = (cfg_csum << 16) | wdt->param.xmls_id2;

 return scnprintf(buf, PAGE_SIZE, "%x\n", cfg_csum);
}
