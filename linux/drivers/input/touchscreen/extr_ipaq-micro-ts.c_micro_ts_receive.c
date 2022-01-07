
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct touchscreen_data {int input; } ;
typedef int __be16 ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int be16_to_cpup (int *) ;
 int input_report_abs (int ,int ,int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void micro_ts_receive(void *data, int len, unsigned char *msg)
{
 struct touchscreen_data *ts = data;

 if (len == 4) {
  input_report_abs(ts->input, ABS_X,
     be16_to_cpup((__be16 *) &msg[2]));
  input_report_abs(ts->input, ABS_Y,
     be16_to_cpup((__be16 *) &msg[0]));
  input_report_key(ts->input, BTN_TOUCH, 1);
  input_sync(ts->input);
 } else if (len == 0) {
  input_report_abs(ts->input, ABS_X, 0);
  input_report_abs(ts->input, ABS_Y, 0);
  input_report_key(ts->input, BTN_TOUCH, 0);
  input_sync(ts->input);
 }
}
