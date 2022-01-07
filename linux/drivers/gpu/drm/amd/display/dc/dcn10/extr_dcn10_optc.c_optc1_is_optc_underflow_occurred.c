
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OPTC_INPUT_GLOBAL_CONTROL ;
 int OPTC_UNDERFLOW_OCCURRED_STATUS ;
 int REG_GET (int ,int ,int*) ;

bool optc1_is_optc_underflow_occurred(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);
 uint32_t underflow_occurred = 0;

 REG_GET(OPTC_INPUT_GLOBAL_CONTROL,
   OPTC_UNDERFLOW_OCCURRED_STATUS,
   &underflow_occurred);

 return (underflow_occurred == 1);
}
