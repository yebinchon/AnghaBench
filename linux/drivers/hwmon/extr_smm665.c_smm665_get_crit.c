
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm665_data {int* critical_max_limit; } ;
struct device {int dummy; } ;


 struct smm665_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int smm665_get_crit(struct device *dev, int index)
{
 struct smm665_data *data = dev_get_drvdata(dev);

 return data->critical_max_limit[index];
}
