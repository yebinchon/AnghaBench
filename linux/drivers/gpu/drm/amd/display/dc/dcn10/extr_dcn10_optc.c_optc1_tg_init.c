
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;


 int optc1_clear_optc_underflow (struct timing_generator*) ;
 int optc1_set_blank_data_double_buffer (struct timing_generator*,int) ;

void optc1_tg_init(struct timing_generator *optc)
{
 optc1_set_blank_data_double_buffer(optc, 1);
 optc1_clear_optc_underflow(optc);
}
