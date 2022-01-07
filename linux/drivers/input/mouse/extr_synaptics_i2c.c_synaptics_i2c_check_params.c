
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synaptics_i2c {scalar_t__ scan_rate_param; scalar_t__ no_decel_param; scalar_t__ no_filter_param; scalar_t__ reduce_report_param; int client; } ;


 scalar_t__ no_decel ;
 scalar_t__ no_filter ;
 scalar_t__ reduce_report ;
 scalar_t__ scan_rate ;
 int set_scan_rate (struct synaptics_i2c*,scalar_t__) ;
 int synaptics_i2c_reset_config (int ) ;

__attribute__((used)) static void synaptics_i2c_check_params(struct synaptics_i2c *touch)
{
 bool reset = 0;

 if (scan_rate != touch->scan_rate_param)
  set_scan_rate(touch, scan_rate);

 if (no_decel != touch->no_decel_param) {
  touch->no_decel_param = no_decel;
  reset = 1;
 }

 if (no_filter != touch->no_filter_param) {
  touch->no_filter_param = no_filter;
  reset = 1;
 }

 if (reduce_report != touch->reduce_report_param) {
  touch->reduce_report_param = reduce_report;
  reset = 1;
 }

 if (reset)
  synaptics_i2c_reset_config(touch->client);
}
