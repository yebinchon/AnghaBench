
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwmon_channel_info {int type; int * config; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * devm_kcalloc (struct device*,int,int,int ) ;

__attribute__((used)) static int scmi_hwmon_add_chan_info(struct hwmon_channel_info *scmi_hwmon_chan,
        struct device *dev, int num,
        enum hwmon_sensor_types type, u32 config)
{
 int i;
 u32 *cfg = devm_kcalloc(dev, num + 1, sizeof(*cfg), GFP_KERNEL);

 if (!cfg)
  return -ENOMEM;

 scmi_hwmon_chan->type = type;
 scmi_hwmon_chan->config = cfg;
 for (i = 0; i < num; i++, cfg++)
  *cfg = config;

 return 0;
}
