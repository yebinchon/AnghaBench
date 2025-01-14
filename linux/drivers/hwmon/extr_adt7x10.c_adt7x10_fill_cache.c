
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct adt7x10_data {int* temp; int hyst; } ;


 int * ADT7X10_REG_TEMP ;
 int ADT7X10_T_HYST ;
 int ARRAY_SIZE (int*) ;
 int adt7x10_read_byte (struct device*,int ) ;
 int adt7x10_read_word (struct device*,int ) ;
 int dev_dbg (struct device*,char*,int ,int) ;
 struct adt7x10_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int adt7x10_fill_cache(struct device *dev)
{
 struct adt7x10_data *data = dev_get_drvdata(dev);
 int ret;
 int i;

 for (i = 1; i < ARRAY_SIZE(data->temp); i++) {
  ret = adt7x10_read_word(dev, ADT7X10_REG_TEMP[i]);
  if (ret < 0) {
   dev_dbg(dev, "Failed to read value: reg %d, error %d\n",
    ADT7X10_REG_TEMP[i], ret);
   return ret;
  }
  data->temp[i] = ret;
 }

 ret = adt7x10_read_byte(dev, ADT7X10_T_HYST);
 if (ret < 0) {
  dev_dbg(dev, "Failed to read value: reg %d, error %d\n",
    ADT7X10_T_HYST, ret);
  return ret;
 }
 data->hyst = ret;

 return 0;
}
