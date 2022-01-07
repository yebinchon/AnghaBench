
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_sensor_hub_device {int dummy; } ;
struct hid_sensor_custom {int input_skip_sample; int wait; scalar_t__ input_report_recd_size; int misc_opened; } ;


 struct hid_sensor_custom* platform_get_drvdata (void*) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int hid_sensor_send_event(struct hid_sensor_hub_device *hsdev,
     unsigned usage_id, void *priv)
{
 struct hid_sensor_custom *sensor_inst = platform_get_drvdata(priv);

 if (!test_bit(0, &sensor_inst->misc_opened))
  return 0;

 sensor_inst->input_report_recd_size = 0;
 sensor_inst->input_skip_sample = 0;

 wake_up(&sensor_inst->wait);

 return 0;
}
