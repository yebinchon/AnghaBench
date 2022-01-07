
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct fam15h_power_data {scalar_t__* cu_acc_power; scalar_t__* cpu_sw_pwr_ptsc; scalar_t__* cu_on; scalar_t__ max_cu_acc_power; int cpu_pwr_sample_ratio; int power_period; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int x86_max_cores; } ;


 int MAX_CUS ;
 TYPE_1__ boot_cpu_data ;
 struct fam15h_power_data* dev_get_drvdata (struct device*) ;
 int do_div (scalar_t__,scalar_t__) ;
 int msecs_to_jiffies (int ) ;
 int read_registers (struct fam15h_power_data*) ;
 long schedule_timeout_interruptible (int ) ;
 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t power1_average_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct fam15h_power_data *data = dev_get_drvdata(dev);
 u64 prev_cu_acc_power[MAX_CUS], prev_ptsc[MAX_CUS],
     jdelta[MAX_CUS];
 u64 tdelta, avg_acc;
 int cu, cu_num, ret;
 signed long leftover;





 cu_num = boot_cpu_data.x86_max_cores;

 ret = read_registers(data);
 if (ret)
  return 0;

 for (cu = 0; cu < cu_num; cu++) {
  prev_cu_acc_power[cu] = data->cu_acc_power[cu];
  prev_ptsc[cu] = data->cpu_sw_pwr_ptsc[cu];
 }

 leftover = schedule_timeout_interruptible(msecs_to_jiffies(data->power_period));
 if (leftover)
  return 0;

 ret = read_registers(data);
 if (ret)
  return 0;

 for (cu = 0, avg_acc = 0; cu < cu_num; cu++) {

  if (data->cu_on[cu] == 0)
   continue;

  if (data->cu_acc_power[cu] < prev_cu_acc_power[cu]) {
   jdelta[cu] = data->max_cu_acc_power + data->cu_acc_power[cu];
   jdelta[cu] -= prev_cu_acc_power[cu];
  } else {
   jdelta[cu] = data->cu_acc_power[cu] - prev_cu_acc_power[cu];
  }
  tdelta = data->cpu_sw_pwr_ptsc[cu] - prev_ptsc[cu];
  jdelta[cu] *= data->cpu_pwr_sample_ratio * 1000;
  do_div(jdelta[cu], tdelta);


  avg_acc += jdelta[cu];
 }

 return sprintf(buf, "%llu\n", (unsigned long long)avg_acc);
}
