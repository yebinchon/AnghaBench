
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgp_data {int iaq_buffer_state; int iaq_buffer; int measure_iaq_cmd; scalar_t__ iaq_defval_skip_jiffies; scalar_t__ iaq_init_start_jiffies; } ;


 int EBUSY ;
 int IAQ_BUFFER_DEFAULT_VALS ;
 int IAQ_BUFFER_VALID ;
 int SGP_MEASUREMENT_DURATION_US ;
 int SGP_MEASUREMENT_LEN ;
 int jiffies ;
 int sgp_read_cmd (struct sgp_data*,int ,int *,int ,int ) ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static int sgp_measure_iaq(struct sgp_data *data)
{
 int ret;

 bool default_vals = !time_after(jiffies, data->iaq_init_start_jiffies +
       data->iaq_defval_skip_jiffies);

 ret = sgp_read_cmd(data, data->measure_iaq_cmd, &data->iaq_buffer,
      SGP_MEASUREMENT_LEN, SGP_MEASUREMENT_DURATION_US);
 if (ret < 0)
  return ret;

 data->iaq_buffer_state = IAQ_BUFFER_DEFAULT_VALS;

 if (default_vals)
  return -EBUSY;

 data->iaq_buffer_state = IAQ_BUFFER_VALID;

 return 0;
}
