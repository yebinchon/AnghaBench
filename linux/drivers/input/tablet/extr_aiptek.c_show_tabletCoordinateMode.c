
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int coordinateMode; } ;
struct aiptek {TYPE_1__ curSetting; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int coordinate_mode_map ;
 struct aiptek* dev_get_drvdata (struct device*) ;
 char* map_val_to_str (int ,int ) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t show_tabletCoordinateMode(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct aiptek *aiptek = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%s\n",
   map_val_to_str(coordinate_mode_map,
     aiptek->curSetting.coordinateMode));
}
