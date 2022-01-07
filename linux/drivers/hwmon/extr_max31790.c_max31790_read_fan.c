
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max31790_data {int fault_status; int * target_count; int * fan_dynamics; int * tach; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct max31790_data*) ;
 int PTR_ERR (struct max31790_data*) ;
 int RPM_FROM_REG (int ,int) ;
 int get_tach_period (int ) ;



 struct max31790_data* max31790_update_device (struct device*) ;

__attribute__((used)) static int max31790_read_fan(struct device *dev, u32 attr, int channel,
        long *val)
{
 struct max31790_data *data = max31790_update_device(dev);
 int sr, rpm;

 if (IS_ERR(data))
  return PTR_ERR(data);

 switch (attr) {
 case 129:
  sr = get_tach_period(data->fan_dynamics[channel]);
  rpm = RPM_FROM_REG(data->tach[channel], sr);
  *val = rpm;
  return 0;
 case 128:
  sr = get_tach_period(data->fan_dynamics[channel]);
  rpm = RPM_FROM_REG(data->target_count[channel], sr);
  *val = rpm;
  return 0;
 case 130:
  *val = !!(data->fault_status & (1 << channel));
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
