
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83781d_data {int type; int* sens; int* fan_min; int update_lock; int vrm; } ;
struct device {int dummy; } ;


 int* BIT_SCFG1 ;
 int* BIT_SCFG2 ;
 int W83781D_REG_BEEP_CONFIG ;
 int W83781D_REG_BEEP_INTS2 ;
 int W83781D_REG_CONFIG ;
 int W83781D_REG_FAN_MIN (int) ;
 int W83781D_REG_PWMCLK12 ;
 int W83781D_REG_SCFG1 ;
 int W83781D_REG_SCFG2 ;
 int W83781D_REG_TEMP2_CONFIG ;
 int W83781D_REG_TEMP3_CONFIG ;
 int as99127f ;
 struct w83781d_data* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ init ;
 int mutex_init (int *) ;
 scalar_t__ reset ;
 int vid_which_vrm () ;
 int w83781d ;
 int w83781d_read_value (struct w83781d_data*,int ) ;
 int w83781d_write_value (struct w83781d_data*,int ,int) ;
 int w83783s ;

__attribute__((used)) static void
w83781d_init_device(struct device *dev)
{
 struct w83781d_data *data = dev_get_drvdata(dev);
 int i, p;
 int type = data->type;
 u8 tmp;

 if (reset && type != as99127f) {
  dev_info(dev,
    "If reset=1 solved a problem you were having, please report!\n");


  i = w83781d_read_value(data, W83781D_REG_BEEP_CONFIG);
  p = w83781d_read_value(data, W83781D_REG_PWMCLK12);




  w83781d_write_value(data, W83781D_REG_CONFIG, 0x80);




  w83781d_write_value(data, W83781D_REG_BEEP_CONFIG, i | 0x80);
  w83781d_write_value(data, W83781D_REG_PWMCLK12, p);





  w83781d_write_value(data, W83781D_REG_BEEP_INTS2, 0);
 }





 if (init && !reset && type != as99127f) {
  i = w83781d_read_value(data, W83781D_REG_BEEP_CONFIG);
  w83781d_write_value(data, W83781D_REG_BEEP_CONFIG, i | 0x80);
 }

 data->vrm = vid_which_vrm();

 if ((type != w83781d) && (type != as99127f)) {
  tmp = w83781d_read_value(data, W83781D_REG_SCFG1);
  for (i = 1; i <= 3; i++) {
   if (!(tmp & BIT_SCFG1[i - 1])) {
    data->sens[i - 1] = 4;
   } else {
    if (w83781d_read_value
        (data,
         W83781D_REG_SCFG2) & BIT_SCFG2[i - 1])
     data->sens[i - 1] = 1;
    else
     data->sens[i - 1] = 2;
   }
   if (type == w83783s && i == 2)
    break;
  }
 }

 if (init && type != as99127f) {

  tmp = w83781d_read_value(data, W83781D_REG_TEMP2_CONFIG);
  if (tmp & 0x01) {
   dev_warn(dev,
     "Enabling temp2, readings might not make sense\n");
   w83781d_write_value(data, W83781D_REG_TEMP2_CONFIG,
    tmp & 0xfe);
  }


  if (type != w83783s) {
   tmp = w83781d_read_value(data,
    W83781D_REG_TEMP3_CONFIG);
   if (tmp & 0x01) {
    dev_warn(dev,
      "Enabling temp3, readings might not make sense\n");
    w83781d_write_value(data,
     W83781D_REG_TEMP3_CONFIG, tmp & 0xfe);
   }
  }
 }


 w83781d_write_value(data, W83781D_REG_CONFIG,
       (w83781d_read_value(data,
      W83781D_REG_CONFIG) & 0xf7)
       | 0x01);


 for (i = 0; i < 3; i++) {
  data->fan_min[i] = w83781d_read_value(data,
     W83781D_REG_FAN_MIN(i));
 }

 mutex_init(&data->update_lock);
}
