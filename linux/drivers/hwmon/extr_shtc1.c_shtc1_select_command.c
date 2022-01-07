
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ blocking_io; scalar_t__ high_precision; } ;
struct shtc1_data {scalar_t__ chip; int nonblocking_wait_time; TYPE_1__ setup; int command; } ;


 int SHTC1_NONBLOCKING_WAIT_TIME_HPM ;
 int SHTC1_NONBLOCKING_WAIT_TIME_LPM ;
 int SHTC3_NONBLOCKING_WAIT_TIME_HPM ;
 int SHTC3_NONBLOCKING_WAIT_TIME_LPM ;
 scalar_t__ shtc1 ;
 int shtc1_cmd_measure_blocking_hpm ;
 int shtc1_cmd_measure_blocking_lpm ;
 int shtc1_cmd_measure_nonblocking_hpm ;
 int shtc1_cmd_measure_nonblocking_lpm ;

__attribute__((used)) static void shtc1_select_command(struct shtc1_data *data)
{
 if (data->setup.high_precision) {
  data->command = data->setup.blocking_io ?
    shtc1_cmd_measure_blocking_hpm :
    shtc1_cmd_measure_nonblocking_hpm;
  data->nonblocking_wait_time = (data->chip == shtc1) ?
    SHTC1_NONBLOCKING_WAIT_TIME_HPM :
    SHTC3_NONBLOCKING_WAIT_TIME_HPM;
 } else {
  data->command = data->setup.blocking_io ?
    shtc1_cmd_measure_blocking_lpm :
    shtc1_cmd_measure_nonblocking_lpm;
  data->nonblocking_wait_time = (data->chip == shtc1) ?
    SHTC1_NONBLOCKING_WAIT_TIME_LPM :
    SHTC3_NONBLOCKING_WAIT_TIME_LPM;
 }
}
