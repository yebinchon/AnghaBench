
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rohm_ts_data {int initialized; int client; } ;
struct input_dev {int dummy; } ;


 struct rohm_ts_data* input_get_drvdata (struct input_dev*) ;
 int rohm_ts_power_off (int ) ;

__attribute__((used)) static void rohm_ts_close(struct input_dev *input_dev)
{
 struct rohm_ts_data *ts = input_get_drvdata(input_dev);

 rohm_ts_power_off(ts->client);

 ts->initialized = 0;
}
