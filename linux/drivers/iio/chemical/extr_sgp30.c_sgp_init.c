
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgp_data {int measure_interval_jiffies; int product_id; int iaq_defval_skip_jiffies; void* measure_gas_signals_cmd; void* measure_iaq_cmd; int iaq_buffer_state; scalar_t__ iaq_init_start_jiffies; int iaq_init_cmd; } ;


 int HZ ;
 int IAQ_BUFFER_EMPTY ;

 void* SGP30_CMD_MEASURE_SIGNAL ;
 int SGP30_MEASURE_INTERVAL_HZ ;

 void* SGPC3_CMD_MEASURE_RAW ;
 int SGPC3_MEASURE_INTERVAL_HZ ;
 int SGP_CMD_IAQ_INIT ;
 void* SGP_CMD_IAQ_MEASURE ;
 int SGP_VERS_PRODUCT (struct sgp_data*) ;

__attribute__((used)) static void sgp_init(struct sgp_data *data)
{
 data->iaq_init_cmd = SGP_CMD_IAQ_INIT;
 data->iaq_init_start_jiffies = 0;
 data->iaq_buffer_state = IAQ_BUFFER_EMPTY;
 switch (SGP_VERS_PRODUCT(data)) {
 case 129:
  data->measure_interval_jiffies = SGP30_MEASURE_INTERVAL_HZ * HZ;
  data->measure_iaq_cmd = SGP_CMD_IAQ_MEASURE;
  data->measure_gas_signals_cmd = SGP30_CMD_MEASURE_SIGNAL;
  data->product_id = 129;
  data->iaq_defval_skip_jiffies = 15 * HZ;
  break;
 case 128:
  data->measure_interval_jiffies = SGPC3_MEASURE_INTERVAL_HZ * HZ;
  data->measure_iaq_cmd = SGPC3_CMD_MEASURE_RAW;
  data->measure_gas_signals_cmd = SGPC3_CMD_MEASURE_RAW;
  data->product_id = 128;
  data->iaq_defval_skip_jiffies =
   43 * data->measure_interval_jiffies;
  break;
 };
}
